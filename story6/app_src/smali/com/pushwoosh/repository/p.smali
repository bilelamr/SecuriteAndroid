.class public Lcom/pushwoosh/repository/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

.field private final b:Lcom/pushwoosh/internal/preference/PreferenceIntValue;

.field private final c:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

.field private final d:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

.field private final e:Lcom/pushwoosh/internal/preference/PreferenceIntValue;

.field private final f:Lcom/pushwoosh/internal/preference/PreferenceIntValue;

.field private final g:Lcom/pushwoosh/internal/preference/PreferenceIntValue;

.field private final h:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

.field private final i:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

.field private final j:Lcom/pushwoosh/internal/preference/PreferenceSoundTypeValue;

.field private final k:Lcom/pushwoosh/internal/preference/PreferenceVibrateTypeValue;

.field private final l:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

.field private final m:Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/internal/preference/PreferenceArrayListValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/pushwoosh/internal/preference/PreferenceJsonObjectValue;

.field private final o:Lcom/pushwoosh/internal/preference/PreferenceClassValue;

.field private final p:Lcom/pushwoosh/internal/preference/PreferenceClassValue;

.field private final q:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

.field private final r:Lcom/pushwoosh/internal/preference/PreferenceStringValue;


# direct methods
.method constructor <init>(Lcom/pushwoosh/internal/utils/d;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NotificationPrefs()..."

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;)V

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getPrefsProvider()Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;

    move-result-object v0

    const-string v1, "com.pushwoosh.pushnotifications"

    invoke-interface {v0, v1}, Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;->providePrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    invoke-interface {p1}, Lcom/pushwoosh/internal/utils/d;->i()Z

    move-result v2

    const-string v3, "dm_multimode"

    invoke-direct {v1, v0, v3, v2}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/pushwoosh/repository/p;->a:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    new-instance v1, Lcom/pushwoosh/internal/preference/PreferenceIntValue;

    const-string v2, "dm_messageid"

    const/16 v3, 0x3e9

    invoke-direct {v1, v0, v2, v3}, Lcom/pushwoosh/internal/preference/PreferenceIntValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/pushwoosh/repository/p;->b:Lcom/pushwoosh/internal/preference/PreferenceIntValue;

    new-instance v1, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    invoke-interface {p1}, Lcom/pushwoosh/internal/utils/d;->j()Z

    move-result v2

    const-string v3, "dm_lightson"

    invoke-direct {v1, v0, v3, v2}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/pushwoosh/repository/p;->c:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    new-instance v1, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    const/4 v2, 0x0

    const-string v3, "dm_ledon"

    invoke-direct {v1, v0, v3, v2}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/pushwoosh/repository/p;->d:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    new-instance v1, Lcom/pushwoosh/internal/preference/PreferenceIntValue;

    const-string v3, "dm_led_color"

    const/4 v4, -0x1

    invoke-direct {v1, v0, v3, v4}, Lcom/pushwoosh/internal/preference/PreferenceIntValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/pushwoosh/repository/p;->e:Lcom/pushwoosh/internal/preference/PreferenceIntValue;

    new-instance v1, Lcom/pushwoosh/internal/preference/PreferenceClassValue;

    invoke-interface {p1}, Lcom/pushwoosh/internal/utils/d;->g()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "pw_notification_factory"

    invoke-direct {v1, v0, v4, v3}, Lcom/pushwoosh/internal/preference/PreferenceClassValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/pushwoosh/repository/p;->o:Lcom/pushwoosh/internal/preference/PreferenceClassValue;

    new-instance v1, Lcom/pushwoosh/internal/preference/PreferenceClassValue;

    invoke-interface {p1}, Lcom/pushwoosh/internal/utils/d;->h()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v0, v4, v3}, Lcom/pushwoosh/internal/preference/PreferenceClassValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/pushwoosh/repository/p;->p:Lcom/pushwoosh/internal/preference/PreferenceClassValue;

    new-instance v1, Lcom/pushwoosh/internal/preference/PreferenceIntValue;

    invoke-interface {p1}, Lcom/pushwoosh/internal/utils/d;->l()I

    move-result v3

    const-string v4, "pw_notification_background_color"

    invoke-direct {v1, v0, v4, v3}, Lcom/pushwoosh/internal/preference/PreferenceIntValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/pushwoosh/repository/p;->f:Lcom/pushwoosh/internal/preference/PreferenceIntValue;

    new-instance v1, Lcom/pushwoosh/internal/preference/PreferenceIntValue;

    invoke-interface {p1}, Lcom/pushwoosh/internal/utils/d;->n()Lcom/pushwoosh/internal/PluginProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/pushwoosh/internal/PluginProvider;->richMediaStartDelay()I

    move-result p1

    const-string v3, "pw_richmedia_delay"

    invoke-direct {v1, v0, v3, p1}, Lcom/pushwoosh/internal/preference/PreferenceIntValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/pushwoosh/repository/p;->g:Lcom/pushwoosh/internal/preference/PreferenceIntValue;

    new-instance p1, Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    const/4 v1, 0x0

    const-string v3, "pw_notification_stat_hash"

    invoke-direct {p1, v0, v3, v1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/pushwoosh/repository/p;->h:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    new-instance p1, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    const-string v3, "pw_notifications_enabled"

    const/4 v4, 0x1

    invoke-direct {p1, v0, v3, v4}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/pushwoosh/repository/p;->i:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    new-instance p1, Lcom/pushwoosh/internal/preference/PreferenceSoundTypeValue;

    sget-object v3, Lcom/pushwoosh/notification/SoundType;->DEFAULT_MODE:Lcom/pushwoosh/notification/SoundType;

    const-string v4, "dm_soundtype"

    invoke-direct {p1, v0, v4, v3}, Lcom/pushwoosh/internal/preference/PreferenceSoundTypeValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/pushwoosh/notification/SoundType;)V

    iput-object p1, p0, Lcom/pushwoosh/repository/p;->j:Lcom/pushwoosh/internal/preference/PreferenceSoundTypeValue;

    new-instance p1, Lcom/pushwoosh/internal/preference/PreferenceVibrateTypeValue;

    sget-object v3, Lcom/pushwoosh/notification/VibrateType;->DEFAULT_MODE:Lcom/pushwoosh/notification/VibrateType;

    const-string v4, "dm_vibratetype"

    invoke-direct {p1, v0, v4, v3}, Lcom/pushwoosh/internal/preference/PreferenceVibrateTypeValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/pushwoosh/notification/VibrateType;)V

    iput-object p1, p0, Lcom/pushwoosh/repository/p;->k:Lcom/pushwoosh/internal/preference/PreferenceVibrateTypeValue;

    new-instance p1, Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    const-string v3, "channel_name"

    const-string v4, "Push notification"

    invoke-direct {p1, v0, v3, v4}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/pushwoosh/repository/p;->l:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    new-instance p1, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;

    const-class v3, Ljava/lang/String;

    const-string v4, "pushHistoryArray"

    const/16 v5, 0x10

    invoke-direct {p1, v0, v4, v5, v3}, Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/Class;)V

    iput-object p1, p0, Lcom/pushwoosh/repository/p;->m:Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;

    new-instance p1, Lcom/pushwoosh/internal/preference/PreferenceJsonObjectValue;

    const-string v3, "cached_tags_string"

    invoke-direct {p1, v0, v3}, Lcom/pushwoosh/internal/preference/PreferenceJsonObjectValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/pushwoosh/repository/p;->n:Lcom/pushwoosh/internal/preference/PreferenceJsonObjectValue;

    new-instance p1, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    const-string v3, "pw_tags_migration_done"

    invoke-direct {p1, v0, v3, v2}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/pushwoosh/repository/p;->q:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    new-instance p1, Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    const-string v2, "pw_custom_data"

    invoke-direct {p1, v0, v2, v1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/pushwoosh/repository/p;->r:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    const-string p1, "NotificationPrefs() done"

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;)V

    return-void
.end method

.method static a(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;)Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;
    .locals 3

    new-instance v0, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;

    const-string v1, "com.pushwoosh.pushnotifications"

    invoke-direct {v0, v1}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->BOOLEAN:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const-string v2, "dm_multimode"

    invoke-virtual {v0, p0, v1, v2}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->put(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;Ljava/lang/String;)V

    sget-object v1, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->INT:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const-string v2, "dm_soundtype"

    invoke-virtual {v0, p0, v1, v2}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->put(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;Ljava/lang/String;)V

    sget-object v1, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->INT:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const-string v2, "dm_vibratetype"

    invoke-virtual {v0, p0, v1, v2}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->put(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;Ljava/lang/String;)V

    sget-object v1, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->STRING:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const-string v2, "channel_name"

    invoke-virtual {v0, p0, v1, v2}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->put(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;Ljava/lang/String;)V

    sget-object v1, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->INT:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const-string v2, "dm_messageid"

    invoke-virtual {v0, p0, v1, v2}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->put(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;Ljava/lang/String;)V

    sget-object v1, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->BOOLEAN:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const-string v2, "dm_lightson"

    invoke-virtual {v0, p0, v1, v2}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->put(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;Ljava/lang/String;)V

    sget-object v1, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->BOOLEAN:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const-string v2, "dm_ledon"

    invoke-virtual {v0, p0, v1, v2}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->put(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;Ljava/lang/String;)V

    sget-object v1, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->INT:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const-string v2, "dm_led_color"

    invoke-virtual {v0, p0, v1, v2}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->put(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;Ljava/lang/String;)V

    sget-object v1, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->STRING:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const-string v2, "pw_notification_factory"

    invoke-virtual {v0, p0, v1, v2}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->put(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;Ljava/lang/String;)V

    sget-object v1, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->STRING:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const-string v2, "pushHistoryArray"

    invoke-virtual {v0, p0, v1, v2}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->put(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;Ljava/lang/String;)V

    sget-object v1, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->STRING:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const-string v2, "cached_tags_string"

    invoke-virtual {v0, p0, v1, v2}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->put(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;Ljava/lang/String;)V

    sget-object v1, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->INT:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const-string v2, "pw_notification_background_color"

    invoke-virtual {v0, p0, v1, v2}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->put(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;Ljava/lang/String;)V

    sget-object v1, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->STRING:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const-string v2, "pw_notification_stat_hash"

    invoke-virtual {v0, p0, v1, v2}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->put(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;Ljava/lang/String;)V

    sget-object v1, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->INT:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const-string v2, "pw_richmedia_delay"

    invoke-virtual {v0, p0, v1, v2}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->put(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;Ljava/lang/String;)V

    sget-object v1, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->BOOLEAN:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const-string v2, "pw_notifications_enabled"

    invoke-virtual {v0, p0, v1, v2}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->put(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/p;->a:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    return-object v0
.end method

.method public b()Lcom/pushwoosh/internal/preference/PreferenceIntValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/p;->b:Lcom/pushwoosh/internal/preference/PreferenceIntValue;

    return-object v0
.end method

.method public c()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/p;->c:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    return-object v0
.end method

.method public d()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/p;->d:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    return-object v0
.end method

.method public e()Lcom/pushwoosh/internal/preference/PreferenceIntValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/p;->e:Lcom/pushwoosh/internal/preference/PreferenceIntValue;

    return-object v0
.end method

.method public f()Lcom/pushwoosh/internal/preference/PreferenceClassValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/p;->o:Lcom/pushwoosh/internal/preference/PreferenceClassValue;

    return-object v0
.end method

.method public g()Lcom/pushwoosh/internal/preference/PreferenceClassValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/p;->p:Lcom/pushwoosh/internal/preference/PreferenceClassValue;

    return-object v0
.end method

.method public h()Lcom/pushwoosh/internal/preference/PreferenceIntValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/p;->f:Lcom/pushwoosh/internal/preference/PreferenceIntValue;

    return-object v0
.end method

.method public i()Lcom/pushwoosh/internal/preference/PreferenceIntValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/p;->g:Lcom/pushwoosh/internal/preference/PreferenceIntValue;

    return-object v0
.end method

.method public j()Lcom/pushwoosh/internal/preference/PreferenceStringValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/p;->h:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    return-object v0
.end method

.method public k()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/p;->i:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    return-object v0
.end method

.method public l()Lcom/pushwoosh/internal/preference/PreferenceSoundTypeValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/p;->j:Lcom/pushwoosh/internal/preference/PreferenceSoundTypeValue;

    return-object v0
.end method

.method public m()Lcom/pushwoosh/internal/preference/PreferenceVibrateTypeValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/p;->k:Lcom/pushwoosh/internal/preference/PreferenceVibrateTypeValue;

    return-object v0
.end method

.method public n()Lcom/pushwoosh/internal/preference/PreferenceStringValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/p;->l:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    return-object v0
.end method

.method public o()Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pushwoosh/internal/preference/PreferenceArrayListValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/repository/p;->m:Lcom/pushwoosh/internal/preference/PreferenceArrayListValue;

    return-object v0
.end method

.method public p()Lcom/pushwoosh/internal/preference/PreferenceJsonObjectValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/p;->n:Lcom/pushwoosh/internal/preference/PreferenceJsonObjectValue;

    return-object v0
.end method

.method public q()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/p;->q:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    return-object v0
.end method

.method public r()Lcom/pushwoosh/internal/preference/PreferenceStringValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/p;->r:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    return-object v0
.end method
