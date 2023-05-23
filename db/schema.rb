# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "Addresses", id: :serial, force: :cascade do |t|
    t.string "postalCode", limit: 255
    t.string "state", limit: 255
    t.string "city", limit: 255
    t.string "street", limit: 255
    t.datetime "createdAt", default: -> { "now()" }, null: false
    t.datetime "updatedAt", default: -> { "now()" }, null: false
  end

  create_table "Admins", id: :serial, force: :cascade do |t|
    t.string "uid", limit: 255, null: false
    t.string "email", limit: 255
    t.string "password", limit: 255
    t.string "role", limit: 255, default: "tie", null: false
    t.string "resetToken", limit: 255
    t.datetime "createdAt", default: -> { "now()" }, null: false
    t.datetime "updatedAt", default: -> { "now()" }, null: false
    t.index ["email"], name: "Admins_email_key", unique: true
    t.index ["uid"], name: "Admins_uid_key", unique: true
  end

  create_table "BookChapters", id: :serial, force: :cascade do |t|
    t.integer "code", null: false
    t.integer "BookId"
    t.string "name", limit: 255, null: false
    t.text "description"
    t.boolean "isVirtual", default: false, null: false
    t.datetime "createdAt", default: -> { "now()" }, null: false
    t.datetime "updatedAt", default: -> { "now()" }, null: false
  end

  create_table "BookVideos", id: :serial, force: :cascade do |t|
    t.integer "code", null: false
    t.string "name", limit: 255, null: false
    t.text "description"
    t.integer "BookChapterId"
    t.string "fileName", limit: 255
    t.string "duration", limit: 255
    t.datetime "createdAt", default: -> { "now()" }, null: false
    t.datetime "updatedAt", default: -> { "now()" }, null: false
  end

  create_table "Books", id: :serial, force: :cascade do |t|
    t.string "code", limit: 255, null: false
    t.integer "position", null: false
    t.boolean "comingSoon", default: false, null: false
    t.boolean "isMain", null: false
    t.integer "TeachingMaterialId"
    t.string "name", limit: 255, null: false
    t.text "description"
    t.string "imageFileName", limit: 255
    t.datetime "createdAt", default: -> { "now()" }, null: false
    t.datetime "updatedAt", default: -> { "now()" }, null: false
  end

  create_table "Brands", id: :serial, force: :cascade do |t|
    t.string "uid", limit: 255, null: false
    t.string "password", limit: 255
    t.string "name", limit: 255, null: false
    t.string "nameKana", limit: 255, null: false
    t.integer "AddressId"
    t.string "phone", limit: 255
    t.boolean "frozen", default: false, null: false
    t.integer "CorporationId"
    t.datetime "createdAt", default: -> { "now()" }, null: false
    t.datetime "updatedAt", default: -> { "now()" }, null: false
    t.index ["uid"], name: "Brands_uid_key", unique: true
  end

  create_table "CorporationCsvs", id: :serial, force: :cascade do |t|
    t.string "csvFileName", limit: 255
    t.integer "AdminId"
    t.datetime "createdAt", default: -> { "now()" }, null: false
    t.datetime "updatedAt", default: -> { "now()" }, null: false
  end

  create_table "Corporations", id: :serial, force: :cascade do |t|
    t.string "uid", limit: 255, null: false
    t.string "password", limit: 255
    t.string "name", limit: 255, null: false
    t.string "nameKana", limit: 255, null: false
    t.integer "AddressId"
    t.string "phone", limit: 255
    t.boolean "frozen", default: false, null: false
    t.datetime "createdAt", default: -> { "now()" }, null: false
    t.datetime "updatedAt", default: -> { "now()" }, null: false
    t.index ["uid"], name: "Corporations_uid_key", unique: true
  end

  create_table "Courses", id: :serial, force: :cascade do |t|
    t.integer "BookId"
    t.integer "nextCourseId"
    t.string "name", limit: 255
    t.date "startDate", null: false
    t.date "endDate", null: false
    t.boolean "isHybrid", null: false
    t.boolean "showBookVideo", null: false
    t.boolean "showZoomLesson", null: false
    t.boolean "showHomeworkVideo", null: false
    t.integer "CorporationId"
    t.datetime "createdAt", default: -> { "now()" }, null: false
    t.datetime "updatedAt", default: -> { "now()" }, null: false
  end

  create_table "Events", id: :serial, force: :cascade do |t|
    t.string "title", limit: 255, null: false
    t.string "thumbnailFileName", limit: 255
    t.string "zoomLink", limit: 255
    t.text "summary"
    t.string "heading", limit: 255
    t.text "description"
    t.string "imageFileName1", limit: 255
    t.string "imageFileName2", limit: 255
    t.string "imageFileName3", limit: 255
    t.string "imageFileName4", limit: 255
    t.string "imgCaption1", limit: 255
    t.string "imgCaption2", limit: 255
    t.string "imgCaption3", limit: 255
    t.string "imgCaption4", limit: 255
    t.string "youtubeLink", limit: 255
    t.text "notes"
    t.string "googleFormLink", limit: 255
    t.string "targetAudience", limit: 255
    t.datetime "eventStartDateTime", null: false
    t.datetime "eventEndDateTime", null: false
    t.datetime "createdAt", default: -> { "now()" }, null: false
    t.datetime "updatedAt", default: -> { "now()" }, null: false
    t.integer "imgPosition1"
    t.integer "imgPosition2"
    t.integer "imgPosition3"
    t.integer "imgPosition4"
  end

  create_table "Genders", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.string "description", limit: 255
    t.datetime "createdAt", default: -> { "now()" }, null: false
    t.datetime "updatedAt", default: -> { "now()" }, null: false
  end

  create_table "Handouts", id: :serial, force: :cascade do |t|
    t.string "zipFileName", limit: 255
    t.string "zipTitle", limit: 255
    t.datetime "startDisplayDateTime"
    t.datetime "expirationDateTime"
    t.integer "CorporationId"
    t.datetime "createdAt", default: -> { "now()" }, null: false
    t.datetime "updatedAt", default: -> { "now()" }, null: false
  end

  create_table "HomeworkVideos", id: :serial, force: :cascade do |t|
    t.integer "code", null: false
    t.string "name", limit: 255, null: false
    t.text "description"
    t.integer "BookChapterId"
    t.string "fileName", limit: 255
    t.string "duration", limit: 255
    t.datetime "createdAt", default: -> { "now()" }, null: false
    t.datetime "updatedAt", default: -> { "now()" }, null: false
  end

  create_table "JukuNews", id: :serial, force: :cascade do |t|
    t.string "title", limit: 255
    t.text "description"
    t.string "imageFileName", limit: 255
    t.string "imgTitle", limit: 255
    t.string "link", limit: 255
    t.string "linkTitle", limit: 255
    t.string "pdfLink", limit: 255
    t.string "pdfTitle", limit: 255
    t.string "pdfFileSize", limit: 255
    t.boolean "isForAll"
    t.datetime "startDisplayDateTime"
    t.integer "TeachingMaterialId"
    t.datetime "createdAt", default: -> { "now()" }, null: false
    t.datetime "updatedAt", default: -> { "now()" }, null: false
  end

  create_table "LessonDetails", id: :serial, force: :cascade do |t|
    t.integer "ZoomLessonId"
    t.integer "BookChapterId"
    t.integer "CourseId"
    t.string "mainTitle", limit: 255, null: false
    t.string "subTitle", limit: 255, null: false
    t.string "imageFileName", limit: 255
    t.string "pageNumber", limit: 255
    t.text "description"
    t.boolean "isVisible"
    t.datetime "offlineLessonStartDateTime"
    t.datetime "offlineLessonEndDateTime"
    t.datetime "startDateTime"
    t.datetime "endDateTime"
    t.datetime "createdAt", default: -> { "now()" }, null: false
    t.datetime "updatedAt", default: -> { "now()" }, null: false
  end

  create_table "News", id: :serial, force: :cascade do |t|
    t.string "title", limit: 255
    t.text "description"
    t.string "imageFileName", limit: 255
    t.string "imgTitle", limit: 255
    t.string "link", limit: 2000
    t.string "linkTitle", limit: 255
    t.boolean "isForAll"
    t.datetime "startDisplayDateTime", null: false
    t.integer "CorporationId"
    t.integer "TeachingMaterialId"
    t.datetime "createdAt", default: -> { "now()" }, null: false
    t.datetime "updatedAt", default: -> { "now()" }, null: false
    t.integer "BrandId"
  end

  create_table "SchoolCourses", id: :serial, force: :cascade do |t|
    t.integer "SchoolId"
    t.integer "CourseId"
    t.datetime "createdAt", default: -> { "now()" }, null: false
    t.datetime "updatedAt", default: -> { "now()" }, null: false
    t.index ["SchoolId", "CourseId"], name: "school_courses__school_id__course_id", unique: true
  end

  create_table "SchoolYears", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.text "description"
    t.datetime "createdAt", default: -> { "now()" }, null: false
    t.datetime "updatedAt", default: -> { "now()" }, null: false
  end

  create_table "Schools", id: :serial, force: :cascade do |t|
    t.string "uid", limit: 255, null: false
    t.string "password", limit: 255
    t.string "name", limit: 255, null: false
    t.string "nameKana", limit: 255, null: false
    t.integer "AddressId"
    t.string "phone", limit: 255
    t.boolean "frozen", default: false, null: false
    t.integer "BrandId"
    t.datetime "createdAt", default: -> { "now()" }, null: false
    t.datetime "updatedAt", default: -> { "now()" }, null: false
    t.index ["uid"], name: "Schools_uid_key", unique: true
  end

  create_table "SequelizeMeta", primary_key: "name", id: { type: :string, limit: 255 }, force: :cascade do |t|
  end

# Could not dump table "StudentCourses" because of following StandardError
#   Unknown type '"enum_StudentCourses_billingStatus"' for column 'billingStatus'

  create_table "StudentCsvs", id: :serial, force: :cascade do |t|
    t.string "csvFileName", limit: 255
    t.integer "AdminId"
    t.integer "CorporationId"
    t.integer "BrandId"
    t.integer "SchoolId"
    t.datetime "createdAt", default: -> { "now()" }, null: false
    t.datetime "updatedAt", default: -> { "now()" }, null: false
  end

  create_table "Students", id: :serial, force: :cascade do |t|
    t.string "uid", limit: 255, null: false
    t.integer "SchoolId"
    t.integer "GenderId"
    t.integer "SchoolYearId"
    t.string "firstName", limit: 255, null: false
    t.string "lastName", limit: 255, null: false
    t.string "firstNameKana", limit: 255, null: false
    t.string "lastNameKana", limit: 255, null: false
    t.string "fullName", limit: 255, null: false
    t.string "fullNameKana", limit: 255, null: false
    t.string "password", limit: 255, null: false
    t.string "deviceCode", limit: 255
    t.boolean "frozen", default: false, null: false
    t.boolean "removed", default: false, null: false
    t.datetime "createdAt", default: -> { "now()" }, null: false
    t.datetime "updatedAt", default: -> { "now()" }, null: false
    t.index ["uid"], name: "Students_uid_key", unique: true
  end

  create_table "TeachingMaterials", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255, null: false
    t.string "code", limit: 255, null: false
    t.integer "position", null: false
    t.integer "additionalViewerPrice"
    t.integer "defaultViewerPrice"
    t.integer "price", default: 0
    t.boolean "comingSoon", default: false, null: false
    t.boolean "automaticRenew", default: false, null: false
    t.string "imageFileName", limit: 255
    t.text "description"
    t.datetime "createdAt", default: -> { "now()" }, null: false
    t.datetime "updatedAt", default: -> { "now()" }, null: false
  end

# Could not dump table "Viewers" because of following StandardError
#   Unknown type '"enum_Viewers_billingStatus"' for column 'billingStatus'

  create_table "WatchedBookVideos", id: :serial, force: :cascade do |t|
    t.integer "StudentId"
    t.integer "BookVideoId"
    t.datetime "createdAt", default: -> { "now()" }, null: false
    t.datetime "updatedAt", default: -> { "now()" }, null: false
  end

  create_table "WatchedHomeworkVideos", id: :serial, force: :cascade do |t|
    t.integer "StudentId"
    t.integer "HomeworkVideoId"
    t.datetime "createdAt", default: -> { "now()" }, null: false
    t.datetime "updatedAt", default: -> { "now()" }, null: false
  end

  create_table "WatchedZoomLessons", id: :serial, force: :cascade do |t|
    t.integer "StudentId"
    t.integer "ZoomLessonId"
    t.boolean "attended"
    t.datetime "createdAt", default: -> { "now()" }, null: false
    t.datetime "updatedAt", default: -> { "now()" }, null: false
  end

  create_table "ZoomLessons", id: :serial, force: :cascade do |t|
    t.string "zoomLink", limit: 255, null: false
    t.string "zoomTitle", limit: 255, null: false
    t.string "replayFileName", limit: 255
    t.datetime "startDateTime", null: false
    t.datetime "replayStartDateTime"
    t.datetime "endDateTime", null: false
    t.datetime "replayEndDateTime"
    t.datetime "createdAt", default: -> { "now()" }, null: false
    t.datetime "updatedAt", default: -> { "now()" }, null: false
  end

  add_foreign_key "BookChapters", "\"Books\"", column: "BookId", name: "BookChapters_BookId_fkey", on_delete: :cascade
  add_foreign_key "BookVideos", "\"BookChapters\"", column: "BookChapterId", name: "BookVideos_BookChapterId_fkey", on_delete: :cascade
  add_foreign_key "Books", "\"TeachingMaterials\"", column: "TeachingMaterialId", name: "Books_TeachingMaterialId_fkey", on_delete: :nullify
  add_foreign_key "Brands", "\"Addresses\"", column: "AddressId", name: "Brands_AddressId_fkey", on_delete: :nullify
  add_foreign_key "Brands", "\"Corporations\"", column: "CorporationId", name: "Brands_CorporationId_fkey", on_delete: :cascade
  add_foreign_key "CorporationCsvs", "\"Admins\"", column: "AdminId", name: "CorporationCsvs_AdminId_fkey", on_delete: :nullify
  add_foreign_key "Corporations", "\"Addresses\"", column: "AddressId", name: "Corporations_AddressId_fkey", on_delete: :nullify
  add_foreign_key "Courses", "\"Books\"", column: "BookId", name: "Courses_BookId_fkey", on_delete: :cascade
  add_foreign_key "Courses", "\"Corporations\"", column: "CorporationId", name: "Courses_CorporationId_fkey", on_delete: :cascade
  add_foreign_key "Courses", "\"Courses\"", column: "nextCourseId", name: "Courses_nextCourseId_fkey", on_delete: :nullify
  add_foreign_key "Handouts", "\"Corporations\"", column: "CorporationId", name: "Handouts_CorporationId_fkey", on_delete: :cascade
  add_foreign_key "HomeworkVideos", "\"BookChapters\"", column: "BookChapterId", name: "HomeworkVideos_BookChapterId_fkey", on_delete: :cascade
  add_foreign_key "JukuNews", "\"TeachingMaterials\"", column: "TeachingMaterialId", name: "JukuNews_TeachingMaterialId_fkey", on_delete: :cascade
  add_foreign_key "LessonDetails", "\"BookChapters\"", column: "BookChapterId", name: "LessonDetails_BookChapterId_fkey", on_delete: :nullify
  add_foreign_key "LessonDetails", "\"Courses\"", column: "CourseId", name: "LessonDetails_CourseId_fkey", on_delete: :cascade
  add_foreign_key "LessonDetails", "\"ZoomLessons\"", column: "ZoomLessonId", name: "LessonDetails_ZoomLessonId_fkey", on_delete: :nullify
  add_foreign_key "News", "\"Brands\"", column: "BrandId", name: "News_BrandId_fkey", on_delete: :cascade
  add_foreign_key "News", "\"Corporations\"", column: "CorporationId", name: "News_CorporationId_fkey", on_delete: :cascade
  add_foreign_key "News", "\"TeachingMaterials\"", column: "TeachingMaterialId", name: "News_TeachingMaterialId_fkey", on_delete: :cascade
  add_foreign_key "SchoolCourses", "\"Courses\"", column: "CourseId", name: "SchoolCourses_CourseId_fkey", on_delete: :cascade
  add_foreign_key "SchoolCourses", "\"Schools\"", column: "SchoolId", name: "SchoolCourses_SchoolId_fkey", on_delete: :cascade
  add_foreign_key "Schools", "\"Addresses\"", column: "AddressId", name: "Schools_AddressId_fkey", on_delete: :nullify
  add_foreign_key "Schools", "\"Brands\"", column: "BrandId", name: "Schools_BrandId_fkey", on_delete: :cascade
  add_foreign_key "StudentCourses", "\"Courses\"", column: "CourseId", name: "StudentCourses_CourseId_fkey", on_delete: :cascade
  add_foreign_key "StudentCourses", "\"Students\"", column: "StudentId", name: "StudentCourses_StudentId_fkey", on_delete: :cascade
  add_foreign_key "StudentCsvs", "\"Admins\"", column: "AdminId", name: "StudentCsvs_AdminId_fkey", on_delete: :nullify
  add_foreign_key "StudentCsvs", "\"Brands\"", column: "BrandId", name: "StudentCsvs_BrandId_fkey", on_delete: :nullify
  add_foreign_key "StudentCsvs", "\"Corporations\"", column: "CorporationId", name: "StudentCsvs_CorporationId_fkey", on_delete: :nullify
  add_foreign_key "StudentCsvs", "\"Schools\"", column: "SchoolId", name: "StudentCsvs_SchoolId_fkey", on_delete: :nullify
  add_foreign_key "Students", "\"Genders\"", column: "GenderId", name: "Students_GenderId_fkey", on_delete: :nullify
  add_foreign_key "Students", "\"SchoolYears\"", column: "SchoolYearId", name: "Students_SchoolYearId_fkey", on_delete: :nullify
  add_foreign_key "Students", "\"Schools\"", column: "SchoolId", name: "Students_SchoolId_fkey", on_delete: :nullify
  add_foreign_key "Viewers", "\"Schools\"", column: "SchoolId", name: "Viewers_SchoolId_fkey", on_delete: :cascade
  add_foreign_key "Viewers", "\"TeachingMaterials\"", column: "TeachingMaterialId", name: "Viewers_TeachingMaterialId_fkey", on_delete: :cascade
  add_foreign_key "WatchedBookVideos", "\"BookVideos\"", column: "BookVideoId", name: "WatchedBookVideos_BookVideoId_fkey", on_delete: :cascade
  add_foreign_key "WatchedBookVideos", "\"Students\"", column: "StudentId", name: "WatchedBookVideos_StudentId_fkey", on_delete: :cascade
  add_foreign_key "WatchedHomeworkVideos", "\"HomeworkVideos\"", column: "HomeworkVideoId", name: "WatchedHomeworkVideos_HomeworkVideoId_fkey", on_delete: :cascade
  add_foreign_key "WatchedHomeworkVideos", "\"Students\"", column: "StudentId", name: "WatchedHomeworkVideos_StudentId_fkey", on_delete: :cascade
  add_foreign_key "WatchedZoomLessons", "\"Students\"", column: "StudentId", name: "WatchedZoomLessons_StudentId_fkey", on_delete: :cascade
  add_foreign_key "WatchedZoomLessons", "\"ZoomLessons\"", column: "ZoomLessonId", name: "WatchedZoomLessons_ZoomLessonId_fkey", on_delete: :cascade
end
