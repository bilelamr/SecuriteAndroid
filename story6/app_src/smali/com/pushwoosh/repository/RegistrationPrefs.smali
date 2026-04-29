.class public Lcom/pushwoosh/repository/RegistrationPrefs;
.super Ljava/lang/Object;


# static fields
.field private static final BASE_API_URL_FORMAT:Ljava/lang/String; = "https://%s.api.pushwoosh.com/json/1.3/"

.field private static final COMMUNICATION_ENABLE:Ljava/lang/String; = "pw_communication_enable"

.field private static final GDPR_ENABLE:Ljava/lang/String; = "pw_gdpr_enable"

.field private static final HWID:Ljava/lang/String; = "pw_hwid"

.field private static final OLD_BASE_API_URL:Ljava/lang/String; = "https://cp.pushwoosh.com/json/1.3/"

.field private static final PREFERENCE:Ljava/lang/String; = "com.pushwoosh.registration"

.field private static final PROPERTY_APPLICATION_ID:Ljava/lang/String; = "application_id"

.field private static final PROPERTY_APP_VERSION:Ljava/lang/String; = "app_version"

.field private static final PROPERTY_BASE_URL:Ljava/lang/String; = "pw_base_url"

.field private static final PROPERTY_DEVICE_ID:Ljava/lang/String; = "device_id"

.field private static final PROPERTY_FORCE_REGISTER:Ljava/lang/String; = "force_register"

.field private static final PROPERTY_IS_REGISTERED_FOR_NOTIFICATION:Ljava/lang/String; = "pw_registered_for_push"

.field private static final PROPERTY_LANGUAGE:Ljava/lang/String; = "pw_language"

.field private static final PROPERTY_LAST_ATTRIBUTES_REGISTRATION:Ljava/lang/String; = "last_attributes_registration_change"

.field private static final PROPERTY_LAST_REGISTRATION:Ljava/lang/String; = "last_registration_change"

.field private static final PROPERTY_LOG_LEVEL:Ljava/lang/String; = "log_level"

.field private static final PROPERTY_PROJECT_ID:Ljava/lang/String; = "project_id"

.field private static final PROPERTY_PUSH_TOKEN:Ljava/lang/String; = "registration_id"

.field private static final PROPERTY_REGISTERED_ON_SERVER:Ljava/lang/String; = "registered_on_server"

.field private static final PROPERTY_SETTAGS_FAILED:Ljava/lang/String; = "settags_failed"

.field private static final PROPERTY_USER_ID:Ljava/lang/String; = "user_id"

.field private static final REMOVE_ALL_DEVICE_DATA:Ljava/lang/String; = "pw_remove_all_device_data"

.field private static final TAG:Ljava/lang/String; = "RegistrationPrefs"


# instance fields
.field private final applicationId:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

.field private final baseUrl:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

.field private final communicationEnable:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

.field private final config:Lcom/pushwoosh/internal/utils/d;

.field private final deviceId:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

.field private final deviceRegistrar:Lcom/pushwoosh/repository/d;

.field private final forceRegister:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

.field private final gdprEnable:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

.field private final hwid:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

.field private final language:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

.field private final lastAttributesRegistration:Lcom/pushwoosh/internal/preference/PreferenceLongValue;

.field private final lastPushRegistration:Lcom/pushwoosh/internal/preference/PreferenceLongValue;

.field private final logLevel:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

.field private final projectId:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

.field private final pushToken:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

.field private registeredForPush:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

.field private final registeredOnServer:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

.field private final removeAllDeviceData:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

.field private final setTagsFailed:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

.field private final userId:Lcom/pushwoosh/internal/preference/PreferenceStringValue;


# direct methods
.method constructor <init>(Lcom/pushwoosh/internal/utils/d;Lcom/pushwoosh/repository/d;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RegistrationPrefs()..."

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->config:Lcom/pushwoosh/internal/utils/d;

    iput-object p2, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->deviceRegistrar:Lcom/pushwoosh/repository/d;

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getPrefsProvider()Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;

    move-result-object p2

    const-string v0, "com.pushwoosh.registration"

    invoke-interface {p2, v0}, Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;->providePrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p2

    new-instance v0, Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    const-string v1, ""

    const-string v2, "application_id"

    invoke-direct {v0, p2, v2, v1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->applicationId:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    iget-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->applicationId:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/pushwoosh/internal/utils/d;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->applicationId:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    invoke-interface {p1}, Lcom/pushwoosh/internal/utils/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->set(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    const-string v2, "project_id"

    invoke-direct {v0, p2, v2, v1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->projectId:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    iget-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->projectId:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/pushwoosh/internal/utils/d;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->projectId:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    invoke-interface {p1}, Lcom/pushwoosh/internal/utils/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->set(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    const-string v2, "registration_id"

    invoke-direct {v0, p2, v2, v1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->pushToken:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    new-instance v0, Lcom/pushwoosh/internal/preference/PreferenceIntValue;

    const/4 v2, 0x0

    const-string v3, "app_version"

    invoke-direct {v0, p2, v3, v2}, Lcom/pushwoosh/internal/preference/PreferenceIntValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->pushToken:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    invoke-virtual {v3}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    const-string v6, "pw_registered_for_push"

    invoke-direct {v4, p2, v6, v3}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    iput-object v4, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->registeredForPush:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    new-instance v3, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    const-string v4, "force_register"

    invoke-direct {v3, p2, v4, v2}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    iput-object v3, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->forceRegister:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    invoke-static {}, Lcom/pushwoosh/internal/platform/utils/GeneralUtils;->getAppVersion()I

    move-result v3

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceIntValue;->get()I

    move-result v4

    if-eq v4, v3, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App version changed from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceIntValue;->get()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; resetting registration id"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "RegistrationPrefs"

    invoke-static {v6, v4}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->pushToken:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    invoke-virtual {v4, v1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->set(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/pushwoosh/internal/preference/PreferenceIntValue;->set(I)V

    :cond_3
    new-instance v0, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    const-string v3, "registered_on_server"

    invoke-direct {v0, p2, v3, v2}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->registeredOnServer:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    new-instance v0, Lcom/pushwoosh/internal/preference/PreferenceLongValue;

    const-wide/16 v3, 0x0

    const-string v6, "last_registration_change"

    invoke-direct {v0, p2, v6, v3, v4}, Lcom/pushwoosh/internal/preference/PreferenceLongValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->lastPushRegistration:Lcom/pushwoosh/internal/preference/PreferenceLongValue;

    new-instance v0, Lcom/pushwoosh/internal/preference/PreferenceLongValue;

    const-string v6, "last_attributes_registration_change"

    invoke-direct {v0, p2, v6, v3, v4}, Lcom/pushwoosh/internal/preference/PreferenceLongValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->lastAttributesRegistration:Lcom/pushwoosh/internal/preference/PreferenceLongValue;

    new-instance v0, Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    const-string v3, "user_id"

    invoke-direct {v0, p2, v3, v1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->userId:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    new-instance v0, Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    const-string v3, "device_id"

    invoke-direct {v0, p2, v3, v1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->deviceId:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    new-instance v0, Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    invoke-interface {p1}, Lcom/pushwoosh/internal/utils/d;->d()Ljava/lang/String;

    move-result-object p1

    const-string v3, "log_level"

    invoke-direct {v0, p2, v3, p1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->logLevel:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    new-instance p1, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    const-string v0, "settags_failed"

    invoke-direct {p1, p2, v0, v2}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->setTagsFailed:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    new-instance p1, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    const-string v0, "pw_communication_enable"

    invoke-direct {p1, p2, v0, v5}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->communicationEnable:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    new-instance p1, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    const-string v0, "pw_remove_all_device_data"

    invoke-direct {p1, p2, v0, v2}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->removeAllDeviceData:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    new-instance p1, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    const-string v0, "pw_gdpr_enable"

    invoke-direct {p1, p2, v0, v5}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->gdprEnable:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    new-instance p1, Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    const-string v0, "pw_base_url"

    invoke-direct {p1, p2, v0, v1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->baseUrl:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    iget-object p1, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->baseUrl:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    invoke-virtual {p1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->computeBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->set(Ljava/lang/String;)V

    new-instance p1, Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    const-string v0, "pw_hwid"

    invoke-direct {p1, p2, v0, v1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->hwid:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    new-instance p1, Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pw_language"

    invoke-direct {p1, p2, v1, v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->language:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    const-string p1, "RegistrationPrefs() done"

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;)V

    return-void
.end method

.method private computeBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/pushwoosh/repository/RegistrationPrefs;->getDefaultBaseUrl()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method static provideMigrationScheme(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;)Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;
    .locals 5

    new-instance v0, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;

    const-string v1, "com.pushwoosh.registration"

    invoke-direct {v0, v1}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->STRING:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const-string v3, "application_id"

    invoke-virtual {v0, p0, v2, v3}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->put(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;Ljava/lang/String;)V

    sget-object v2, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->STRING:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const-string v3, "project_id"

    invoke-virtual {v0, p0, v2, v3}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->put(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;Ljava/lang/String;)V

    sget-object v2, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->STRING:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const-string v3, "registration_id"

    invoke-virtual {v0, p0, v2, v3}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->put(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;Ljava/lang/String;)V

    sget-object v2, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->INT:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const-string v4, "app_version"

    invoke-virtual {v0, p0, v2, v4}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->put(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;Ljava/lang/String;)V

    sget-object v2, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->BOOLEAN:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const-string v4, "registered_on_server"

    invoke-virtual {v0, p0, v2, v4}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->put(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;Ljava/lang/String;)V

    sget-object v2, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->LONG:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const-string v4, "last_registration_change"

    invoke-virtual {v0, p0, v2, v4}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->put(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;Ljava/lang/String;)V

    sget-object v2, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->LONG:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const-string v4, "last_attributes_registration_change"

    invoke-virtual {v0, p0, v2, v4}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->put(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;Ljava/lang/String;)V

    sget-object v2, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->STRING:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const-string v4, "user_id"

    invoke-virtual {v0, p0, v2, v4}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->put(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;Ljava/lang/String;)V

    sget-object v2, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->STRING:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const-string v4, "device_id"

    invoke-virtual {v0, p0, v2, v4}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->put(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;Ljava/lang/String;)V

    sget-object v2, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->STRING:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const-string v4, "log_level"

    invoke-virtual {v0, p0, v2, v4}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->put(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;Ljava/lang/String;)V

    sget-object v2, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->STRING:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const-string v4, "pw_base_url"

    invoke-virtual {v0, p0, v2, v4}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->put(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;Ljava/lang/String;)V

    sget-object v2, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->BOOLEAN:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const-string v4, "settags_failed"

    invoke-virtual {v0, p0, v2, v4}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->put(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;->providePrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "pw_registered_for_push"

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    :goto_0
    invoke-virtual {v0, v1, p0}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    const-string v2, ""

    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    goto :goto_0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public applicationId()Lcom/pushwoosh/internal/preference/PreferenceStringValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->applicationId:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    return-object v0
.end method

.method public baseUrl()Lcom/pushwoosh/internal/preference/PreferenceStringValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->baseUrl:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    return-object v0
.end method

.method public clearSenderIdInfo()V
    .locals 3

    invoke-virtual {p0}, Lcom/pushwoosh/repository/RegistrationPrefs;->pushToken()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->set(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pushwoosh/repository/RegistrationPrefs;->lastPushRegistration()Lcom/pushwoosh/internal/preference/PreferenceLongValue;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pushwoosh/internal/preference/PreferenceLongValue;->set(J)V

    return-void
.end method

.method public communicationEnable()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->communicationEnable:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    return-object v0
.end method

.method public deviceId()Lcom/pushwoosh/internal/preference/PreferenceStringValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->deviceId:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    return-object v0
.end method

.method public forceRegister()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->forceRegister:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    return-object v0
.end method

.method public gdprEnable()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->gdprEnable:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    return-object v0
.end method

.method public getDefaultBaseUrl()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->config:Lcom/pushwoosh/internal/utils/d;

    invoke-interface {v0}, Lcom/pushwoosh/internal/utils/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->applicationId:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "https://%s.api.pushwoosh.com/json/1.3/"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "https://cp.pushwoosh.com/json/1.3/"

    :cond_1
    :goto_0
    return-object v0
.end method

.method public hwid()Lcom/pushwoosh/internal/preference/PreferenceStringValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->hwid:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    return-object v0
.end method

.method public isRegisteredForPush()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->registeredForPush:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    return-object v0
.end method

.method public language()Lcom/pushwoosh/internal/preference/PreferenceStringValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->language:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    return-object v0
.end method

.method public lastAttributesRegistration()Lcom/pushwoosh/internal/preference/PreferenceLongValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->lastAttributesRegistration:Lcom/pushwoosh/internal/preference/PreferenceLongValue;

    return-object v0
.end method

.method public lastPushRegistration()Lcom/pushwoosh/internal/preference/PreferenceLongValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->lastPushRegistration:Lcom/pushwoosh/internal/preference/PreferenceLongValue;

    return-object v0
.end method

.method public logLevel()Lcom/pushwoosh/internal/preference/PreferenceStringValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->logLevel:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    return-object v0
.end method

.method public projectId()Lcom/pushwoosh/internal/preference/PreferenceStringValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->projectId:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    return-object v0
.end method

.method public pushToken()Lcom/pushwoosh/internal/preference/PreferenceStringValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->pushToken:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    return-object v0
.end method

.method public registeredOnServer()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->registeredOnServer:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    return-object v0
.end method

.method public removeAllDeviceData()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->removeAllDeviceData:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    return-object v0
.end method

.method public removeAppId()V
    .locals 3

    invoke-virtual {p0}, Lcom/pushwoosh/repository/RegistrationPrefs;->applicationId()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->set(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pushwoosh/repository/RegistrationPrefs;->baseUrl()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->set(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pushwoosh/repository/RegistrationPrefs;->lastAttributesRegistration()Lcom/pushwoosh/internal/preference/PreferenceLongValue;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pushwoosh/internal/preference/PreferenceLongValue;->set(J)V

    invoke-virtual {p0}, Lcom/pushwoosh/repository/RegistrationPrefs;->lastPushRegistration()Lcom/pushwoosh/internal/preference/PreferenceLongValue;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/pushwoosh/internal/preference/PreferenceLongValue;->set(J)V

    invoke-virtual {p0}, Lcom/pushwoosh/repository/RegistrationPrefs;->setTagsFailed()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->set(Z)V

    iget-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->registeredOnServer:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    invoke-virtual {v0, v1}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->set(Z)V

    return-void
.end method

.method public removeSenderId()V
    .locals 2

    invoke-virtual {p0}, Lcom/pushwoosh/repository/RegistrationPrefs;->clearSenderIdInfo()V

    invoke-virtual {p0}, Lcom/pushwoosh/repository/RegistrationPrefs;->projectId()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->set(Ljava/lang/String;)V

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/pushwoosh/repository/RegistrationPrefs;->applicationId()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->set(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pushwoosh/repository/RegistrationPrefs;->baseUrl()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object p1

    invoke-virtual {p0}, Lcom/pushwoosh/repository/RegistrationPrefs;->getDefaultBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->set(Ljava/lang/String;)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/pushwoosh/repository/RegistrationPrefs;->language()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->set(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pushwoosh/repository/RegistrationPrefs;->lastPushRegistration()Lcom/pushwoosh/internal/preference/PreferenceLongValue;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/pushwoosh/internal/preference/PreferenceLongValue;->set(J)V

    iget-object p1, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->deviceRegistrar:Lcom/pushwoosh/repository/d;

    invoke-virtual {p1}, Lcom/pushwoosh/repository/d;->a()V

    return-void
.end method

.method public setTagsFailed()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->setTagsFailed:Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    return-object v0
.end method

.method public userId()Lcom/pushwoosh/internal/preference/PreferenceStringValue;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/RegistrationPrefs;->userId:Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    return-object v0
.end method
