import Fluent
import Vapor

final class Task: Model, Content {
    static let schema = "tasks"
    
    @ID(key: .id)
    var id: UUID?

    @Field(key: "name")
    var name: String
    
    @Field(key: "detail")
    var detail: String

    @Timestamp(key: "created_at", on: .create, format: .iso8601)
    var createdAt: Date?
    
    @Timestamp(key: "updated_at", on: .update, format: .iso8601)
    var updatedAt: Date?
    
    init() { }

    init(id: UUID? = nil,
         name: String,
         detail: String,
         createdAt: Date? = nil,
         updatedAt: Date? = nil) {
        self.id = id
        self.name = name
        self.detail = detail
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
