.class Lcom/pushwoosh/internal/platform/utils/a$b;
.super Lcom/pushwoosh/internal/platform/utils/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/internal/platform/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/utils/a$f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pushwoosh/internal/platform/utils/a$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/utils/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getRegistrationPreferences()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->deviceId()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->deviceId()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->set(Ljava/lang/String;)V

    return-object v1
.end method
