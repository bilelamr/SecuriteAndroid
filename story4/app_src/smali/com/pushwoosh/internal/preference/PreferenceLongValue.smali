.class public Lcom/pushwoosh/internal/preference/PreferenceLongValue;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/preference/PreferenceValue;


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pushwoosh/internal/preference/PreferenceLongValue;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/pushwoosh/internal/preference/PreferenceLongValue;->a:Landroid/content/SharedPreferences;

    if-nez p1, :cond_0

    move-wide p1, p3

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lcom/pushwoosh/internal/preference/PreferenceLongValue;->c:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    iput-wide p3, p0, Lcom/pushwoosh/internal/preference/PreferenceLongValue;->c:J

    :goto_1
    return-void
.end method


# virtual methods
.method public get()J
    .locals 2

    iget-wide v0, p0, Lcom/pushwoosh/internal/preference/PreferenceLongValue;->c:J

    return-wide v0
.end method

.method public set(J)V
    .locals 2

    iput-wide p1, p0, Lcom/pushwoosh/internal/preference/PreferenceLongValue;->c:J

    iget-object v0, p0, Lcom/pushwoosh/internal/preference/PreferenceLongValue;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string p1, "Incorrect state of the app preferences is null"

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/internal/preference/PreferenceLongValue;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
