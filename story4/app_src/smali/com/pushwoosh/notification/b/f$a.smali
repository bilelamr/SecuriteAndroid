.class Lcom/pushwoosh/notification/b/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/notification/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/net/Uri;

.field private c:Z

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/pushwoosh/notification/b/f$a;->a:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/pushwoosh/notification/b/f$a;->e:I

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getNotificationPreferences()Lcom/pushwoosh/repository/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->e()Lcom/pushwoosh/internal/preference/PreferenceIntValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/internal/preference/PreferenceIntValue;->get()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pushwoosh/notification/b/f$a;->a(I)Lcom/pushwoosh/notification/b/f$a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->m()Lcom/pushwoosh/internal/preference/PreferenceVibrateTypeValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pushwoosh/internal/preference/PreferenceVibrateTypeValue;->get()Lcom/pushwoosh/notification/VibrateType;

    move-result-object v2

    sget-object v3, Lcom/pushwoosh/notification/VibrateType;->NO_VIBRATE:Lcom/pushwoosh/notification/VibrateType;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pushwoosh/notification/b/f$a;->a(Z)Lcom/pushwoosh/notification/b/f$a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->c()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->get()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/pushwoosh/notification/b/f$a;->b(Z)Lcom/pushwoosh/notification/b/f$a;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .locals 2

    new-instance v0, Landroid/app/NotificationChannel;

    iget v1, p0, Lcom/pushwoosh/notification/b/f$a;->e:I

    invoke-direct {v0, p1, p2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget-boolean p1, p0, Lcom/pushwoosh/notification/b/f$a;->c:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/pushwoosh/internal/utils/g;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    invoke-static {}, Lcom/pushwoosh/notification/b/a;->a()[J

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/pushwoosh/notification/b/f$a;->d:Z

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    iget p1, p0, Lcom/pushwoosh/notification/b/f$a;->a:I

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    iget-object p1, p0, Lcom/pushwoosh/notification/b/f$a;->b:Landroid/net/Uri;

    if-eqz p1, :cond_2

    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    iget-object p2, p0, Lcom/pushwoosh/notification/b/f$a;->b:Landroid/net/Uri;

    invoke-virtual {v0, p2, p1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    :cond_2
    invoke-virtual {v0, p3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    return-object v0
.end method

.method a(I)Lcom/pushwoosh/notification/b/f$a;
    .locals 0

    iput p1, p0, Lcom/pushwoosh/notification/b/f$a;->a:I

    return-object p0
.end method

.method a(Landroid/net/Uri;)Lcom/pushwoosh/notification/b/f$a;
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/notification/b/f$a;->b:Landroid/net/Uri;

    return-object p0
.end method

.method a(Z)Lcom/pushwoosh/notification/b/f$a;
    .locals 0

    iput-boolean p1, p0, Lcom/pushwoosh/notification/b/f$a;->c:Z

    return-object p0
.end method

.method b(I)Lcom/pushwoosh/notification/b/f$a;
    .locals 0

    iput p1, p0, Lcom/pushwoosh/notification/b/f$a;->e:I

    return-object p0
.end method

.method b(Z)Lcom/pushwoosh/notification/b/f$a;
    .locals 0

    iput-boolean p1, p0, Lcom/pushwoosh/notification/b/f$a;->d:Z

    return-object p0
.end method
