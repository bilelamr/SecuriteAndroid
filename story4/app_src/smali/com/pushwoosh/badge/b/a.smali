.class public final Lcom/pushwoosh/badge/b/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/pushwoosh/internal/preference/PreferenceIntValue;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getPrefsProvider()Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;

    move-result-object v0

    const-string v1, "com.pushwoosh.badge"

    invoke-interface {v0, v1}, Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;->providePrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/pushwoosh/internal/preference/PreferenceIntValue;

    const-string v2, "pw_badges_count"

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/pushwoosh/internal/preference/PreferenceIntValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/pushwoosh/badge/b/a;->a:Lcom/pushwoosh/internal/preference/PreferenceIntValue;

    return-void
.end method

.method public static a(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;)Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;
    .locals 3

    new-instance v0, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;

    const-string v1, "com.pushwoosh.badge"

    invoke-direct {v0, v1}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->INT:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const-string v2, "pw_badges_count"

    invoke-virtual {v0, p0, v1, v2}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->put(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/pushwoosh/internal/preference/PreferenceIntValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/badge/b/a;->a:Lcom/pushwoosh/internal/preference/PreferenceIntValue;

    return-object v0
.end method
