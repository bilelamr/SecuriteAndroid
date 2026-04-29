.class Lcom/pushwoosh/internal/platform/utils/a$c;
.super Lcom/pushwoosh/internal/platform/utils/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/internal/platform/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/utils/a$f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pushwoosh/internal/platform/utils/a$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/utils/a$c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ""

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    const-string v2, "unknown"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method
