.class public final enum Lcom/pushwoosh/notification/SoundType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pushwoosh/notification/SoundType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALWAYS:Lcom/pushwoosh/notification/SoundType;

.field public static final enum DEFAULT_MODE:Lcom/pushwoosh/notification/SoundType;

.field public static final enum NO_SOUND:Lcom/pushwoosh/notification/SoundType;

.field private static final synthetic b:[Lcom/pushwoosh/notification/SoundType;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/pushwoosh/notification/SoundType;

    const/4 v1, 0x0

    const-string v2, "DEFAULT_MODE"

    invoke-direct {v0, v2, v1, v1}, Lcom/pushwoosh/notification/SoundType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pushwoosh/notification/SoundType;->DEFAULT_MODE:Lcom/pushwoosh/notification/SoundType;

    new-instance v0, Lcom/pushwoosh/notification/SoundType;

    const/4 v2, 0x1

    const-string v3, "NO_SOUND"

    invoke-direct {v0, v3, v2, v2}, Lcom/pushwoosh/notification/SoundType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pushwoosh/notification/SoundType;->NO_SOUND:Lcom/pushwoosh/notification/SoundType;

    new-instance v0, Lcom/pushwoosh/notification/SoundType;

    const/4 v3, 0x2

    const-string v4, "ALWAYS"

    invoke-direct {v0, v4, v3, v3}, Lcom/pushwoosh/notification/SoundType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pushwoosh/notification/SoundType;->ALWAYS:Lcom/pushwoosh/notification/SoundType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/pushwoosh/notification/SoundType;

    sget-object v4, Lcom/pushwoosh/notification/SoundType;->DEFAULT_MODE:Lcom/pushwoosh/notification/SoundType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/pushwoosh/notification/SoundType;->NO_SOUND:Lcom/pushwoosh/notification/SoundType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pushwoosh/notification/SoundType;->ALWAYS:Lcom/pushwoosh/notification/SoundType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/pushwoosh/notification/SoundType;->b:[Lcom/pushwoosh/notification/SoundType;

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

    iput p3, p0, Lcom/pushwoosh/notification/SoundType;->a:I

    return-void
.end method

.method public static fromInt(I)Lcom/pushwoosh/notification/SoundType;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/pushwoosh/notification/SoundType;->DEFAULT_MODE:Lcom/pushwoosh/notification/SoundType;

    return-object p0

    :cond_0
    sget-object p0, Lcom/pushwoosh/notification/SoundType;->ALWAYS:Lcom/pushwoosh/notification/SoundType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/pushwoosh/notification/SoundType;->NO_SOUND:Lcom/pushwoosh/notification/SoundType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/pushwoosh/notification/SoundType;->DEFAULT_MODE:Lcom/pushwoosh/notification/SoundType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pushwoosh/notification/SoundType;
    .locals 1

    const-class v0, Lcom/pushwoosh/notification/SoundType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pushwoosh/notification/SoundType;

    return-object p0
.end method

.method public static values()[Lcom/pushwoosh/notification/SoundType;
    .locals 1

    sget-object v0, Lcom/pushwoosh/notification/SoundType;->b:[Lcom/pushwoosh/notification/SoundType;

    invoke-virtual {v0}, [Lcom/pushwoosh/notification/SoundType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pushwoosh/notification/SoundType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/pushwoosh/notification/SoundType;->a:I

    return v0
.end method
