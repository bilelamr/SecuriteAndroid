.class public Lcl/json/social/SMSShare;
.super Lcl/json/social/SingleShareIntent;
.source "SMSShare.java"


# instance fields
.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Lcl/json/social/SingleShareIntent;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcl/json/social/SMSShare;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 25
    iput-object p1, p0, Lcl/json/social/SMSShare;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method


# virtual methods
.method protected getDefaultWebLink()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPackage()Ljava/lang/String;
    .locals 2

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 38
    iget-object v0, p0, Lcl/json/social/SMSShare;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "com.android.mms"

    return-object v0
.end method

.method protected getPlayStoreLink()Ljava/lang/String;
    .locals 1

    const-string v0, "market://details?id=com.android.mms"

    return-object v0
.end method

.method public open(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcl/json/social/SingleShareIntent;->open(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 32
    invoke-virtual {p0}, Lcl/json/social/SingleShareIntent;->openIntentChooser()V

    return-void
.end method
