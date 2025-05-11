CREATE INDEX "course_title" ON "courses" ("title");

CREATE INDEX "student_name" ON "students" ("name");

CREATE INDEX "number_enrollement_per_course" ON "enrollments" ("course_id");

CREATE INDEX "course_date" ON "courses" ("semester");

CREATE INDEX "requirement_satisfied_by_course" ON "satisfies" ("course_id");
