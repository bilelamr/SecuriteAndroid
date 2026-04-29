.class public Lcom/pushwoosh/internal/checker/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/checker/Checker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check()Z
    .locals 3

    :try_start_0
    const-string v0, "com.google.firebase.iid.FirebaseInstanceId"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "You must add \"implementation \'com.google.firebase:firebase-messaging:+\'\" line to your app build.gradle.\nCheck documentation for more info https://goo.gl/UVJKfp"

    invoke-static {v1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
