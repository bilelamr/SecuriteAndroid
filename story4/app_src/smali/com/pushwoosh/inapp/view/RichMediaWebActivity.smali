.class public Lcom/pushwoosh/inapp/view/RichMediaWebActivity;
.super Lcom/pushwoosh/inapp/view/WebActivity;

# interfaces
.implements Lcom/pushwoosh/inapp/view/b$a;


# instance fields
.field final a:Landroid/os/Handler;

.field private c:Z

.field private d:Z

.field private e:Lcom/pushwoosh/inapp/view/f;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lcom/pushwoosh/inapp/d/a;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/pushwoosh/inapp/view/WebActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->k:Z

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/pushwoosh/inapp/e/b/b;)Landroid/content/Intent;
    .locals 2

    invoke-static {p0}, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/pushwoosh/inapp/view/WebActivity;->a(Landroid/content/Intent;Lcom/pushwoosh/inapp/e/b/b;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/pushwoosh/inapp/e/b/b;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    invoke-static {p0}, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/pushwoosh/inapp/view/WebActivity;->a(Landroid/content/Intent;Lcom/pushwoosh/inapp/e/b/b;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    const/high16 p1, 0x14800000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic a(Lcom/pushwoosh/inapp/view/RichMediaWebActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->c:Z

    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/pushwoosh/inapp/e/b/b;)Landroid/content/Intent;
    .locals 2

    invoke-static {p0}, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/pushwoosh/inapp/view/WebActivity;->a(Landroid/content/Intent;Lcom/pushwoosh/inapp/e/b/b;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/pushwoosh/inapp/view/RichMediaWebActivity;)V
    .locals 0

    invoke-super {p0}, Lcom/pushwoosh/inapp/view/WebActivity;->c()V

    return-void
.end method

.method static synthetic c(Lcom/pushwoosh/inapp/view/RichMediaWebActivity;)Lcom/pushwoosh/inapp/view/f;
    .locals 0

    iget-object p0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->e:Lcom/pushwoosh/inapp/view/f;

    return-object p0
.end method

.method static synthetic d(Lcom/pushwoosh/inapp/view/RichMediaWebActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->h()V

    return-void
.end method

.method private f()V
    .locals 5

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->n()Lcom/pushwoosh/richmedia/RichMediaStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/richmedia/RichMediaStyle;->getTimeOutBackButtonEnable()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->c:Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->a:Landroid/os/Handler;

    invoke-static {p0}, Lcom/pushwoosh/inapp/view/h;->a(Lcom/pushwoosh/inapp/view/RichMediaWebActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private g()V
    .locals 5

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->e:Lcom/pushwoosh/inapp/view/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->g:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x80000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getNotificationPreferences()Lcom/pushwoosh/repository/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/p;->c()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/pushwoosh/internal/utils/g;->c()V

    :cond_1
    iget-object v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/g;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->l:Z

    if-nez v2, :cond_2

    iput-boolean v1, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->l:Z

    :try_start_0
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parse ringtone with songUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->j:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/WebActivity;->b:Lcom/pushwoosh/inapp/e/b/b;

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/e/b/b;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->i:Z

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->i:Z

    new-instance v0, Lcom/pushwoosh/inapp/view/d;

    iget-object v2, p0, Lcom/pushwoosh/inapp/view/WebActivity;->b:Lcom/pushwoosh/inapp/e/b/b;

    invoke-direct {v0, v2}, Lcom/pushwoosh/inapp/view/d;-><init>(Lcom/pushwoosh/inapp/e/b/b;)V

    invoke-static {v0}, Lcom/pushwoosh/internal/event/EventBus;->sendEvent(Lcom/pushwoosh/internal/event/Event;)Z

    :cond_3
    iget-object v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->e:Lcom/pushwoosh/inapp/view/f;

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/view/f;->e()V

    iput-boolean v1, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->j:Z

    :cond_4
    return-void
.end method

.method private h()V
    .locals 2

    iget-boolean v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->k:Z

    new-instance v0, Lcom/pushwoosh/inapp/event/c;

    iget-object v1, p0, Lcom/pushwoosh/inapp/view/WebActivity;->b:Lcom/pushwoosh/inapp/e/b/b;

    invoke-direct {v0, v1}, Lcom/pushwoosh/inapp/event/c;-><init>(Lcom/pushwoosh/inapp/e/b/b;)V

    invoke-static {v0}, Lcom/pushwoosh/internal/event/EventBus;->sendEvent(Lcom/pushwoosh/internal/event/Event;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->e:Lcom/pushwoosh/inapp/view/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/view/f;->c()V

    :cond_0
    return-void
.end method

.method public a(Lcom/pushwoosh/inapp/b/a;)V
    .locals 2

    const-string v0, "[InApp]RichMediaWebAct"

    const-string v1, "Failed loading html data"

    invoke-static {v0, v1, p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/WebActivity;->b:Lcom/pushwoosh/inapp/e/b/b;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/pushwoosh/inapp/view/e;

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/WebActivity;->b:Lcom/pushwoosh/inapp/e/b/b;

    invoke-direct {p1, v0}, Lcom/pushwoosh/inapp/view/e;-><init>(Lcom/pushwoosh/inapp/e/b/b;)V

    invoke-static {p1}, Lcom/pushwoosh/internal/event/EventBus;->sendEvent(Lcom/pushwoosh/internal/event/Event;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->c()V

    return-void
.end method

.method protected a(Lcom/pushwoosh/inapp/e/b/b;Ljava/lang/String;I)V
    .locals 2

    iput-object p2, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->f:Ljava/lang/String;

    iput p3, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->g:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->l:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p3

    const-string v0, "[InApp]RichMediaWebActpushwoosh.inAppFragment"

    invoke-virtual {p3, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p3

    check-cast p3, Lcom/pushwoosh/inapp/view/b;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    if-eqz p3, :cond_0

    invoke-virtual {v1, p3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    iput-boolean p2, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->i:Z

    invoke-static {p1}, Lcom/pushwoosh/inapp/view/b;->a(Lcom/pushwoosh/inapp/e/b/b;)Lcom/pushwoosh/inapp/view/b;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iput-boolean p2, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->i:Z

    return-void
.end method

.method protected a(Lcom/pushwoosh/inapp/view/f;)V
    .locals 1

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->e:Lcom/pushwoosh/inapp/view/f;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v0, "[InApp]RichMediaWebActpushwoosh.inAppFragment"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/inapp/view/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/view/b;->b()V

    :cond_0
    return-void
.end method

.method public a(Lcom/pushwoosh/inapp/d/a;)Z
    .locals 7

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->e:Lcom/pushwoosh/inapp/view/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->h:Lcom/pushwoosh/inapp/d/a;

    invoke-virtual {p1, v0}, Lcom/pushwoosh/inapp/d/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->h:Lcom/pushwoosh/inapp/d/a;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/d/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/d/a;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object v2, p1

    const-string p1, "<head>"

    const-string v1, "<head>\n<script type=\"text/javascript\">(function () {if (window.pushwoosh) return;window.pushwoosh = {    _hwid: \"%s\",    _version: \"%s\",    postEvent: function(event, attributes, successCallback, errorCallback) {        if (!attributes) {            attributes = {};        }        if (!successCallback) {            successCallback = function() {};        }        if (!errorCallback) {            errorCallback = function(error) {};        }        var successCbId = _pwCallbackHelper.registerCallback(successCallback);        var errorCbId = _pwCallbackHelper.registerCallback(errorCallback);        pushwooshImpl.postEvent(event, JSON.stringify(attributes), successCbId, errorCbId);    },    sendTags: function(tags) {        pushwooshImpl.sendTags(JSON.stringify(tags));    },    getTags: function(successCallback, errorCallback) {        if (!errorCallback) {            errorCallback = function(error) {};        }        var successCbId = _pwCallbackHelper.registerCallback(function(tagsString) {            console.log(\"tags: \" + tagsString);            successCallback(JSON.parse(tagsString));        });        var errorCbId = _pwCallbackHelper.registerCallback(errorCallback);        pushwooshImpl.getTags(successCbId, errorCbId);    },    isCommunicationEnabled: function() {        return pushwooshImpl.isCommunicationEnabled();    },    setCommunicationEnabled: function(enabled) {        pushwooshImpl.setCommunicationEnabled(enabled);    },    removeAllDeviceData: function() {        pushwooshImpl.removeAllDeviceData();    },    log: function(str) {        pushwooshImpl.log(str);    },    closeInApp: function() {        pushwooshImpl.closeInApp();    },    getHwid: function() {        return this._hwid;    },    getVersion: function() {        return this._version;    },    getCustomData: function() {         var customData = pushwooshImpl.getCustomData();         if (customData) {             return JSON.parse(customData);         } else {             return null;         }    },    registerForPushNotifications: function() {        pushwooshImpl.registerForPushNotifications();    },    openAppSettings: function() {        pushwooshImpl.openAppSettings();    },    getChannels: function(callback) {        var clb = _pwCallbackHelper.registerCallback(function(channels) {             callback(JSON.parse(channels));        });        pushwooshImpl.getChannels(clb);    },    unregisterForPushNotifications: function(callback) {        var clb = _pwCallbackHelper.registerCallback(callback);        pushwooshImpl.unregisterForPushNotifications(clb);    },    isRegisteredForPushNotifications: function(callback) {        var clb = _pwCallbackHelper.registerCallback(function(state) {           if (state == \'true\') {callback(true);} else if (state == \'false\') {callback(false);}        });        pushwooshImpl.isRegisteredForPushNotifications(clb);    }};}());</script>"

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->e:Lcom/pushwoosh/inapp/view/f;

    const/4 v6, 0x0

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    invoke-virtual/range {v1 .. v6}, Lcom/pushwoosh/inapp/view/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->e:Lcom/pushwoosh/inapp/view/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/view/f;->d()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "[InApp]RichMediaWebActpushwoosh.inAppFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/inapp/view/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    iget-boolean v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->d:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->d:Z

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->e:Lcom/pushwoosh/inapp/view/f;

    new-instance v1, Lcom/pushwoosh/inapp/view/RichMediaWebActivity$1;

    invoke-direct {v1, p0}, Lcom/pushwoosh/inapp/view/RichMediaWebActivity$1;-><init>(Lcom/pushwoosh/inapp/view/RichMediaWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inapp/view/f;->a(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public d()V
    .locals 0

    invoke-super {p0}, Lcom/pushwoosh/inapp/view/WebActivity;->d()V

    invoke-direct {p0}, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->g()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->c()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/pushwoosh/inapp/view/WebActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    const-string v0, "IS_CLOSED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string v0, "IS_ANIMATED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->j:Z

    const-string v0, "KEY_IS_SOUND_PLAYED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->l:Z

    const-string v0, "extraSound"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->f:Ljava/lang/String;

    iget v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->g:I

    const-string v1, "extraMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->g:I

    :cond_1
    invoke-direct {p0}, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->f()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/pushwoosh/inapp/view/WebActivity;->onDestroy()V

    invoke-direct {p0}, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->h()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/pushwoosh/inapp/view/WebActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->j:Z

    const-string v1, "IS_ANIMATED"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->d:Z

    const-string v1, "IS_CLOSED"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->l:Z

    const-string v1, "KEY_IS_SOUND_PLAYED"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->f:Ljava/lang/String;

    const-string v1, "extraSound"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->g:I

    const-string v1, "extraMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
