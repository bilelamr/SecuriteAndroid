.class public Lcom/pushwoosh/notification/PushwooshNotificationSettings;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/pushwoosh/repository/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getNotificationPreferences()Lcom/pushwoosh/repository/p;

    move-result-object v0

    sput-object v0, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->a:Lcom/pushwoosh/repository/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Z
    .locals 1

    sget-object v0, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->a:Lcom/pushwoosh/repository/p;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Lcom/pushwoosh/q;->a()V

    const/4 v0, 0x0

    return v0
.end method

.method public static areNotificationsEnabled()Z
    .locals 2

    invoke-static {}, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/pushwoosh/internal/utils/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->a:Lcom/pushwoosh/repository/p;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->k()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static enableNotifications(Z)V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->a:Lcom/pushwoosh/repository/p;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->k()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->set(Z)V

    :cond_0
    return-void
.end method

.method public static setColorLED(I)V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->a:Lcom/pushwoosh/repository/p;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->e()Lcom/pushwoosh/internal/preference/PreferenceIntValue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/internal/preference/PreferenceIntValue;->set(I)V

    :cond_0
    return-void
.end method

.method public static setEnableLED(Z)V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->a:Lcom/pushwoosh/repository/p;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->d()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->set(Z)V

    :cond_0
    return-void
.end method

.method public static setLightScreenOnNotification(Z)V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->a:Lcom/pushwoosh/repository/p;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->c()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->set(Z)V

    :cond_0
    return-void
.end method

.method public static setMultiNotificationMode(Z)V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->a:Lcom/pushwoosh/repository/p;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->a()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->set(Z)V

    :cond_0
    return-void
.end method

.method public static setNotificationChannelName(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->a:Lcom/pushwoosh/repository/p;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->n()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->set(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setNotificationIconBackgroundColor(I)V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->a:Lcom/pushwoosh/repository/p;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->h()Lcom/pushwoosh/internal/preference/PreferenceIntValue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/internal/preference/PreferenceIntValue;->set(I)V

    :cond_0
    return-void
.end method

.method public static setSoundNotificationType(Lcom/pushwoosh/notification/SoundType;)V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->a:Lcom/pushwoosh/repository/p;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->l()Lcom/pushwoosh/internal/preference/PreferenceSoundTypeValue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/internal/preference/PreferenceSoundTypeValue;->set(Lcom/pushwoosh/notification/SoundType;)V

    :cond_0
    return-void
.end method

.method public static setVibrateNotificationType(Lcom/pushwoosh/notification/VibrateType;)V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->a:Lcom/pushwoosh/repository/p;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->m()Lcom/pushwoosh/internal/preference/PreferenceVibrateTypeValue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/internal/preference/PreferenceVibrateTypeValue;->set(Lcom/pushwoosh/notification/VibrateType;)V

    :cond_0
    return-void
.end method
