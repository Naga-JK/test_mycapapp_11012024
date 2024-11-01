
namespace com.ey.school;
using{ com.ey.reuse as reuse } from './reuse';
using {cuid, temporal, managed  } from '@sap/cds/common';


context master {
// Creating the db table --CDS file once compiled SQL code will generate behind the scene
// The table name created will be com_ey_school_master_student
// Foreign key column name will become class_id (colun name in the student table underscore key of the association table class)
entity student: reuse.Address {
    key id: reuse.Guid;
        name: String(80);
        // Exaple for foreign key relationship
        class: Association to one class;
        age: Int16;
    }
//The table name created will be com_ey_school_master_class
entity class {
    key id: reuse.Guid;
        className: String(80);
        teacher: String(80);
        semesters: Int16;
    }
 
 entity book: cuid {
        bookName: localized String(32);
        author: String (80); 
 }
}

context transaction {
    entity subs: cuid, temporal, managed {
        student: association to one master.student;
        book: association to one master.book;

    }
}