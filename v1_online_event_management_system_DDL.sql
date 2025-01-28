USE online_event_management_system_db;

CREATE TABLE front_desk_user
(
    id            BIGINT IDENTITY PRIMARY KEY,
    username      NVARCHAR(100) NOT NULL,
    created_date  DATETIME      NOT NULL,
    modified_date DATETIME,
    created_by    VARCHAR(20)   NOT NULL,
    modified_by   VARCHAR(20)
)

GO;

CREATE TABLE holiday
(
    id            BIGINT IDENTITY PRIMARY KEY,
    holiday_date  DATE          NOT NULL,
    reason        NVARCHAR(100) NOT NULL,
    created_date  DATETIME      NOT NULL,
    modified_date DATETIME,
    created_by    VARCHAR(20)   NOT NULL,
    modified_by   VARCHAR(20)
);

GO;

CREATE TABLE customers
(
    id            BIGINT IDENTITY PRIMARY KEY,
    name          NVARCHAR(100) NOT NULL,
    address       NVARCHAR(250),
    phone         NVARCHAR(20),
    email         NVARCHAR(100) NOT NULL,
    type          NVARCHAR(10)  NOT NULL,
    status        BIT           NOT NULL,
    created_date  DATETIME      NOT NULL,
    modified_date DATETIME,
    created_by    VARCHAR(20)   NOT NULL,
    modified_by   VARCHAR(20)
);

GO;

CREATE TABLE reservation
(
    id               BIGINT IDENTITY PRIMARY KEY,
    user_id          BIGINT       NOT NULL,
    guest_count      INT          NOT NULL,
    reservation_date DATETIME     NOT NULL,
    status           NVARCHAR(10) NOT NULL,
    comments         NVARCHAR(250),
    created_date     DATETIME     NOT NULL,
    modified_date    DATETIME,
    created_by       VARCHAR(20)  NOT NULL,
    modified_by      VARCHAR(20),
    CONSTRAINT FK_reservations_customers FOREIGN KEY (user_id) REFERENCES customers (id)
);

GO;