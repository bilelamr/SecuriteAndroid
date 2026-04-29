.class Lcom/pushwoosh/internal/platform/utils/a$a;
.super Lcom/pushwoosh/internal/platform/utils/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/internal/platform/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/utils/a$f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pushwoosh/internal/platform/utils/a$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/utils/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getAppInfoProvider()Lcom/pushwoosh/internal/platform/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/pushwoosh/internal/platform/a/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
