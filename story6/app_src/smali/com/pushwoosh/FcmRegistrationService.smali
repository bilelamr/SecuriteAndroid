.class public Lcom/pushwoosh/FcmRegistrationService;
.super Lcom/google/firebase/iid/FirebaseInstanceIdService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 2

    invoke-virtual {p0}, Lcom/pushwoosh/FcmRegistrationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pushwoosh/PushwooshFcmHelper;->onTokenRefresh(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
