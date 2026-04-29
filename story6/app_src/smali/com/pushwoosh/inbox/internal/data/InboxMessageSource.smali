.class public final enum Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

.field public static final enum PUSH:Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

.field public static final enum SERVICE:Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

    const/4 v1, 0x0

    const-string v2, "PUSH"

    invoke-direct {v0, v2, v1, v1}, Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;->PUSH:Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

    new-instance v0, Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

    const/4 v2, 0x1

    const-string v3, "SERVICE"

    invoke-direct {v0, v3, v2, v2}, Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;->SERVICE:Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

    sget-object v3, Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;->PUSH:Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

    aput-object v3, v0, v1

    sget-object v1, Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;->SERVICE:Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

    aput-object v1, v0, v2

    sput-object v0, Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;->$VALUES:[Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

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

    iput p3, p0, Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;->code:I

    return-void
.end method

.method public static getByCode(I)Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;
    .locals 5

    invoke-static {}, Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;->values()[Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;->code:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown code of source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;
    .locals 1

    const-class v0, Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

    return-object p0
.end method

.method public static values()[Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;
    .locals 1

    sget-object v0, Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;->$VALUES:[Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

    invoke-virtual {v0}, [Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;

    return-object v0
.end method


# virtual methods
.method public compare(Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;)I
    .locals 1

    iget p1, p1, Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;->code:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v0, p0, Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;->code:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/pushwoosh/inbox/internal/data/InboxMessageSource;->code:I

    return v0
.end method
