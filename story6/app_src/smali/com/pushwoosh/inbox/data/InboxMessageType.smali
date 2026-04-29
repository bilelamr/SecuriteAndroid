.class public final enum Lcom/pushwoosh/inbox/data/InboxMessageType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pushwoosh/inbox/data/InboxMessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pushwoosh/inbox/data/InboxMessageType;

.field public static final enum DEEP_LINK:Lcom/pushwoosh/inbox/data/InboxMessageType;

.field public static final enum PLAIN:Lcom/pushwoosh/inbox/data/InboxMessageType;

.field public static final enum REMOTE_URL:Lcom/pushwoosh/inbox/data/InboxMessageType;

.field public static final enum RICH_MEDIA:Lcom/pushwoosh/inbox/data/InboxMessageType;

.field public static final enum URL:Lcom/pushwoosh/inbox/data/InboxMessageType;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/pushwoosh/inbox/data/InboxMessageType;

    const/4 v1, 0x0

    const-string v2, "PLAIN"

    invoke-direct {v0, v2, v1, v1}, Lcom/pushwoosh/inbox/data/InboxMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pushwoosh/inbox/data/InboxMessageType;->PLAIN:Lcom/pushwoosh/inbox/data/InboxMessageType;

    new-instance v0, Lcom/pushwoosh/inbox/data/InboxMessageType;

    const/4 v2, 0x1

    const-string v3, "RICH_MEDIA"

    invoke-direct {v0, v3, v2, v2}, Lcom/pushwoosh/inbox/data/InboxMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pushwoosh/inbox/data/InboxMessageType;->RICH_MEDIA:Lcom/pushwoosh/inbox/data/InboxMessageType;

    new-instance v0, Lcom/pushwoosh/inbox/data/InboxMessageType;

    const/4 v3, 0x2

    const-string v4, "URL"

    invoke-direct {v0, v4, v3, v3}, Lcom/pushwoosh/inbox/data/InboxMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pushwoosh/inbox/data/InboxMessageType;->URL:Lcom/pushwoosh/inbox/data/InboxMessageType;

    new-instance v0, Lcom/pushwoosh/inbox/data/InboxMessageType;

    const/4 v4, 0x3

    const-string v5, "DEEP_LINK"

    invoke-direct {v0, v5, v4, v4}, Lcom/pushwoosh/inbox/data/InboxMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pushwoosh/inbox/data/InboxMessageType;->DEEP_LINK:Lcom/pushwoosh/inbox/data/InboxMessageType;

    new-instance v0, Lcom/pushwoosh/inbox/data/InboxMessageType;

    const/4 v5, 0x4

    const-string v6, "REMOTE_URL"

    invoke-direct {v0, v6, v5, v5}, Lcom/pushwoosh/inbox/data/InboxMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pushwoosh/inbox/data/InboxMessageType;->REMOTE_URL:Lcom/pushwoosh/inbox/data/InboxMessageType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/pushwoosh/inbox/data/InboxMessageType;

    sget-object v6, Lcom/pushwoosh/inbox/data/InboxMessageType;->PLAIN:Lcom/pushwoosh/inbox/data/InboxMessageType;

    aput-object v6, v0, v1

    sget-object v1, Lcom/pushwoosh/inbox/data/InboxMessageType;->RICH_MEDIA:Lcom/pushwoosh/inbox/data/InboxMessageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pushwoosh/inbox/data/InboxMessageType;->URL:Lcom/pushwoosh/inbox/data/InboxMessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pushwoosh/inbox/data/InboxMessageType;->DEEP_LINK:Lcom/pushwoosh/inbox/data/InboxMessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pushwoosh/inbox/data/InboxMessageType;->REMOTE_URL:Lcom/pushwoosh/inbox/data/InboxMessageType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/pushwoosh/inbox/data/InboxMessageType;->$VALUES:[Lcom/pushwoosh/inbox/data/InboxMessageType;

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

    iput p3, p0, Lcom/pushwoosh/inbox/data/InboxMessageType;->code:I

    return-void
.end method

.method public static getByCode(I)Lcom/pushwoosh/inbox/data/InboxMessageType;
    .locals 5

    invoke-static {}, Lcom/pushwoosh/inbox/data/InboxMessageType;->values()[Lcom/pushwoosh/inbox/data/InboxMessageType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/pushwoosh/inbox/data/InboxMessageType;->code:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect type of InboxMessageType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pushwoosh/inbox/data/InboxMessageType;
    .locals 1

    const-class v0, Lcom/pushwoosh/inbox/data/InboxMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pushwoosh/inbox/data/InboxMessageType;

    return-object p0
.end method

.method public static values()[Lcom/pushwoosh/inbox/data/InboxMessageType;
    .locals 1

    sget-object v0, Lcom/pushwoosh/inbox/data/InboxMessageType;->$VALUES:[Lcom/pushwoosh/inbox/data/InboxMessageType;

    invoke-virtual {v0}, [Lcom/pushwoosh/inbox/data/InboxMessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pushwoosh/inbox/data/InboxMessageType;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/pushwoosh/inbox/data/InboxMessageType;->code:I

    return v0
.end method
