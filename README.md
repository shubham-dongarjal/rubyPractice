erDiagram
    USER ||--o{ POST : writes
    USER ||--o{ COMMENT : posts
    USER ||--o{ SUBSCRIPTION : subscribes_to
    USER {
        int UserId
        varchar Username
        varchar Password
        varchar Email
        varchar Role
    }
    POST ||--o{ COMMENT : has
    POST {
        int PostId
        varchar Title
        text Content
        datetime CreatedAt
        datetime UpdatedAt
    }
    COMMENT ||--o{ COMMENT : replies_to
    COMMENT {
        int CommentId
        int UserId
        int PostId
        int? ParentCommentId
        text Content
        datetime CreatedAt
        datetime UpdatedAt
        varchar Status
    }
    CATEGORY ||--o{ POST_CATEGORY : has
    CATEGORY {
        int CategoryId
        varchar Name
    }
    POST_CATEGORY {
        int PostId
        int CategoryId
    }
    SUBSCRIPTION ||--o{ CATEGORY : follows
    SUBSCRIPTION {
        int SubscriptionId
        int UserId
        int CategoryId
        datetime SubscribedAt
    }
