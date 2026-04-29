.class public Lcom/pushwoosh/internal/preference/PreferenceSoundTypeValue;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/preference/PreferenceValue;


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/pushwoosh/notification/SoundType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pushwoosh/internal/preference/PreferenceSoundTypeValue;->b:Ljava/lang/String;

    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual {p3}, Lcom/pushwoosh/notification/SoundType;->getValue()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/pushwoosh/notification/SoundType;->getValue()I

    move-result v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    :goto_0
    iput p2, p0, Lcom/pushwoosh/internal/preference/PreferenceSoundTypeValue;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    invoke-static {p2}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    invoke-virtual {p3}, Lcom/pushwoosh/notification/SoundType;->getValue()I

    move-result p2

    iput p2, p0, Lcom/pushwoosh/internal/preference/PreferenceSoundTypeValue;->c:I

    :goto_1
    iput-object p1, p0, Lcom/pushwoosh/internal/preference/PreferenceSoundTypeValue;->a:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public get()Lcom/pushwoosh/notification/SoundType;
    .locals 1

    iget v0, p0, Lcom/pushwoosh/internal/preference/PreferenceSoundTypeValue;->c:I

    invoke-static {v0}, Lcom/pushwoosh/notification/SoundType;->fromInt(I)Lcom/pushwoosh/notification/SoundType;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/pushwoosh/notification/SoundType;)V
    .locals 2

    invoke-virtual {p1}, Lcom/pushwoosh/notification/SoundType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/pushwoosh/internal/preference/PreferenceSoundTypeValue;->c:I

    iget-object v0, p0, Lcom/pushwoosh/internal/preference/PreferenceSoundTypeValue;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string p1, "Incorrect state of the app preferences is null"

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/internal/preference/PreferenceSoundTypeValue;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/pushwoosh/notification/SoundType;->getValue()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
