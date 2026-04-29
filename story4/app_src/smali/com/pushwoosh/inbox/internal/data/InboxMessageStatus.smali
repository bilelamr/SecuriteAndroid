.class public final enum Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

.field public static final enum CREATED:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

.field public static final enum DELETED_BY_USER:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

.field public static final enum DELETED_FROM_SERVICE:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

.field public static final enum DELIVERED:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

.field public static final enum OPEN:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

.field public static final enum READ:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    const/4 v1, 0x0

    const-string v2, "CREATED"

    invoke-direct {v0, v2, v1, v1}, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->CREATED:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    new-instance v0, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    const/4 v2, 0x1

    const-string v3, "DELIVERED"

    invoke-direct {v0, v3, v2, v2}, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->DELIVERED:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    new-instance v0, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    const/4 v3, 0x2

    const-string v4, "READ"

    invoke-direct {v0, v4, v3, v3}, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->READ:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    new-instance v0, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    const/4 v4, 0x3

    const-string v5, "OPEN"

    invoke-direct {v0, v5, v4, v4}, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->OPEN:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    new-instance v0, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    const/4 v5, 0x4

    const-string v6, "DELETED_BY_USER"

    invoke-direct {v0, v6, v5, v5}, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->DELETED_BY_USER:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    new-instance v0, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    const/4 v6, 0x5

    const-string v7, "DELETED_FROM_SERVICE"

    invoke-direct {v0, v7, v6, v6}, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->DELETED_FROM_SERVICE:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    sget-object v7, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->CREATED:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    aput-object v7, v0, v1

    sget-object v1, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->DELIVERED:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->READ:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->OPEN:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->DELETED_BY_USER:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->DELETED_FROM_SERVICE:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->$VALUES:[Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->code:I

    return-void
.end method

.method public static getActualCodes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    sget-object v1, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->CREATED:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->DELIVERED:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->READ:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->OPEN:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getByCode(I)Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;
    .locals 5

    invoke-static {}, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->values()[Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->code:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect InboxMessageStatusCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;
    .locals 1

    const-class v0, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    return-object p0
.end method

.method public static values()[Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;
    .locals 1

    sget-object v0, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->$VALUES:[Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    invoke-virtual {v0}, [Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->code:I

    return v0
.end method

.method public getLowerStatus()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->values()[Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4, p0}, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->isLowerStatus(Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public isLowerStatus(Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;)Z
    .locals 2

    sget-object v0, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return v1

    :pswitch_1
    sget-object p1, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->CREATED:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->DELIVERED:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->READ:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->OPEN:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    return v1

    :pswitch_2
    sget-object p1, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->CREATED:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->DELIVERED:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->READ:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    return v1

    :pswitch_3
    sget-object p1, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->CREATED:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->DELIVERED:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v1

    :pswitch_4
    sget-object p1, Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;->CREATED:Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    :goto_0
    :pswitch_5
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
