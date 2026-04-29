.class Lcom/pushwoosh/internal/crash/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CrashAnalytics"

    invoke-static {v0, p0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "CrashAnalytics"

    invoke-static {v0, p0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CrashAnalytics"

    invoke-static {v0, p0}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
