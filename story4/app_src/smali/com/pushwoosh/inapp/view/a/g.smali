.class public Lcom/pushwoosh/inapp/view/a/g;
.super Ljava/lang/Object;


# static fields
.field public static final PUSHWOOSH_JS:Ljava/lang/String; = "(function () {if (window.pushwoosh) return;window.pushwoosh = {    _hwid: \"%s\",    _version: \"%s\",    postEvent: function(event, attributes, successCallback, errorCallback) {        if (!attributes) {            attributes = {};        }        if (!successCallback) {            successCallback = function() {};        }        if (!errorCallback) {            errorCallback = function(error) {};        }        var successCbId = _pwCallbackHelper.registerCallback(successCallback);        var errorCbId = _pwCallbackHelper.registerCallback(errorCallback);        pushwooshImpl.postEvent(event, JSON.stringify(attributes), successCbId, errorCbId);    },    sendTags: function(tags) {        pushwooshImpl.sendTags(JSON.stringify(tags));    },    getTags: function(successCallback, errorCallback) {        if (!errorCallback) {            errorCallback = function(error) {};        }        var successCbId = _pwCallbackHelper.registerCallback(function(tagsString) {            console.log(\"tags: \" + tagsString);            successCallback(JSON.parse(tagsString));        });        var errorCbId = _pwCallbackHelper.registerCallback(errorCallback);        pushwooshImpl.getTags(successCbId, errorCbId);    },    isCommunicationEnabled: function() {        return pushwooshImpl.isCommunicationEnabled();    },    setCommunicationEnabled: function(enabled) {        pushwooshImpl.setCommunicationEnabled(enabled);    },    removeAllDeviceData: function() {        pushwooshImpl.removeAllDeviceData();    },    log: function(str) {        pushwooshImpl.log(str);    },    closeInApp: function() {        pushwooshImpl.closeInApp();    },    getHwid: function() {        return this._hwid;    },    getVersion: function() {        return this._version;    },    getCustomData: function() {         var customData = pushwooshImpl.getCustomData();         if (customData) {             return JSON.parse(customData);         } else {             return null;         }    },    registerForPushNotifications: function() {        pushwooshImpl.registerForPushNotifications();    },    openAppSettings: function() {        pushwooshImpl.openAppSettings();    },    getChannels: function(callback) {        var clb = _pwCallbackHelper.registerCallback(function(channels) {             callback(JSON.parse(channels));        });        pushwooshImpl.getChannels(clb);    },    unregisterForPushNotifications: function(callback) {        var clb = _pwCallbackHelper.registerCallback(callback);        pushwooshImpl.unregisterForPushNotifications(clb);    },    isRegisteredForPushNotifications: function(callback) {        var clb = _pwCallbackHelper.registerCallback(function(state) {           if (state == \'true\') {callback(true);} else if (state == \'false\') {callback(false);}        });        pushwooshImpl.isRegisteredForPushNotifications(clb);    }};}());"


# instance fields
.field private final a:Lcom/pushwoosh/inapp/view/a/d;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/pushwoosh/inapp/view/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/view/View;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/pushwoosh/inapp/view/a/d;Lcom/pushwoosh/inapp/view/a/a;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/a/g;->a:Lcom/pushwoosh/inapp/view/a/d;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/a/g;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/pushwoosh/inapp/view/a/g;->c:Landroid/view/View;

    iput-object p4, p0, Lcom/pushwoosh/inapp/view/a/g;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/function/Result;)V
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/event/b;

    invoke-direct {v0, p0}, Lcom/pushwoosh/inapp/event/b;-><init>(Lcom/pushwoosh/function/Result;)V

    invoke-static {v0}, Lcom/pushwoosh/internal/event/EventBus;->sendEvent(Lcom/pushwoosh/internal/event/Event;)Z

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/inapp/view/a/g;Ljava/lang/String;Lcom/pushwoosh/function/Result;)V
    .locals 1

    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/pushwoosh/inapp/view/a/g;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p2

    check-cast p2, Lcom/pushwoosh/exception/UnregisterForPushNotificationException;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/pushwoosh/inapp/view/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/inapp/view/a/g;Ljava/lang/String;Ljava/lang/String;Lcom/pushwoosh/function/Result;)V
    .locals 1

    invoke-virtual {p3}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/pushwoosh/function/Result;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/pushwoosh/tags/TagsBundle;

    if-nez p2, :cond_0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/pushwoosh/tags/TagsBundle;->toJson()Lorg/json/JSONObject;

    move-result-object p2

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/pushwoosh/inapp/view/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/exception/GetTagsException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/pushwoosh/inapp/view/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/a/g;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/inapp/view/a/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/pushwoosh/inapp/view/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/a/g;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/inapp/view/a/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/pushwoosh/inapp/view/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/pushwoosh/inapp/view/a/g;Ljava/lang/String;Ljava/lang/String;Lcom/pushwoosh/function/Result;)V
    .locals 1

    invoke-virtual {p3}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/pushwoosh/inapp/view/a/g;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/exception/PostEventException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/pushwoosh/inapp/view/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public closeInApp()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/a/g;->a:Lcom/pushwoosh/inapp/view/a/d;

    invoke-interface {v0}, Lcom/pushwoosh/inapp/view/a/d;->a()V

    return-void
.end method

.method public getChannels(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->h()Lcom/pushwoosh/repository/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/s;->e()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pushwoosh/repository/config/Channel;

    invoke-virtual {v2}, Lcom/pushwoosh/repository/config/Channel;->jsonValue()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/pushwoosh/inapp/view/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getCustomData()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/a/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTags(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/pushwoosh/Pushwoosh;->getInstance()Lcom/pushwoosh/Pushwoosh;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/pushwoosh/inapp/view/a/i;->a(Lcom/pushwoosh/inapp/view/a/g;Ljava/lang/String;Ljava/lang/String;)Lcom/pushwoosh/function/Callback;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/pushwoosh/Pushwoosh;->getTags(Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public isCommunicationEnabled()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/pushwoosh/GDPRManager;->getInstance()Lcom/pushwoosh/GDPRManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/GDPRManager;->isCommunicationEnabled()Z

    move-result v0

    return v0
.end method

.method public isDeviceDataRemoved()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/pushwoosh/GDPRManager;->getInstance()Lcom/pushwoosh/GDPRManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/GDPRManager;->isDeviceDataRemoved()Z

    move-result v0

    return v0
.end method

.method public isRegisteredForPushNotifications(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->r()Lcom/pushwoosh/repository/RegistrationPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->isRegisteredForPush()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->get()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const-string v0, "true"

    goto :goto_1

    :cond_0
    const-string v0, "false"

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/pushwoosh/inapp/view/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "[InApp]PushwooshJSInterface"

    invoke-static {v0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/pushwoosh/Pushwoosh;->getInstance()Lcom/pushwoosh/Pushwoosh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/Pushwoosh;->getHwid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "5.20.0"

    aput-object v2, v0, v1

    const-string v1, "javascript:(function () {if (window.pushwoosh) return;window.pushwoosh = {    _hwid: \"%s\",    _version: \"%s\",    postEvent: function(event, attributes, successCallback, errorCallback) {        if (!attributes) {            attributes = {};        }        if (!successCallback) {            successCallback = function() {};        }        if (!errorCallback) {            errorCallback = function(error) {};        }        var successCbId = _pwCallbackHelper.registerCallback(successCallback);        var errorCbId = _pwCallbackHelper.registerCallback(errorCallback);        pushwooshImpl.postEvent(event, JSON.stringify(attributes), successCbId, errorCbId);    },    sendTags: function(tags) {        pushwooshImpl.sendTags(JSON.stringify(tags));    },    getTags: function(successCallback, errorCallback) {        if (!errorCallback) {            errorCallback = function(error) {};        }        var successCbId = _pwCallbackHelper.registerCallback(function(tagsString) {            console.log(\"tags: \" + tagsString);            successCallback(JSON.parse(tagsString));        });        var errorCbId = _pwCallbackHelper.registerCallback(errorCallback);        pushwooshImpl.getTags(successCbId, errorCbId);    },    isCommunicationEnabled: function() {        return pushwooshImpl.isCommunicationEnabled();    },    setCommunicationEnabled: function(enabled) {        pushwooshImpl.setCommunicationEnabled(enabled);    },    removeAllDeviceData: function() {        pushwooshImpl.removeAllDeviceData();    },    log: function(str) {        pushwooshImpl.log(str);    },    closeInApp: function() {        pushwooshImpl.closeInApp();    },    getHwid: function() {        return this._hwid;    },    getVersion: function() {        return this._version;    },    getCustomData: function() {         var customData = pushwooshImpl.getCustomData();         if (customData) {             return JSON.parse(customData);         } else {             return null;         }    },    registerForPushNotifications: function() {        pushwooshImpl.registerForPushNotifications();    },    openAppSettings: function() {        pushwooshImpl.openAppSettings();    },    getChannels: function(callback) {        var clb = _pwCallbackHelper.registerCallback(function(channels) {             callback(JSON.parse(channels));        });        pushwooshImpl.getChannels(clb);    },    unregisterForPushNotifications: function(callback) {        var clb = _pwCallbackHelper.registerCallback(callback);        pushwooshImpl.unregisterForPushNotifications(clb);    },    isRegisteredForPushNotifications: function(callback) {        var clb = _pwCallbackHelper.registerCallback(function(state) {           if (state == \'true\') {callback(true);} else if (state == \'false\') {callback(false);}        });        pushwooshImpl.isRegisteredForPushNotifications(clb);    }};}());"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/pushwoosh/Pushwoosh;->getInstance()Lcom/pushwoosh/Pushwoosh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/Pushwoosh;->getHwid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "5.20.0"

    aput-object v2, v0, v1

    const-string v1, "javascript:(function () {if (window.pushwoosh) return;window.pushwoosh = {    _hwid: \"%s\",    _version: \"%s\",    postEvent: function(event, attributes, successCallback, errorCallback) {        if (!attributes) {            attributes = {};        }        if (!successCallback) {            successCallback = function() {};        }        if (!errorCallback) {            errorCallback = function(error) {};        }        var successCbId = _pwCallbackHelper.registerCallback(successCallback);        var errorCbId = _pwCallbackHelper.registerCallback(errorCallback);        pushwooshImpl.postEvent(event, JSON.stringify(attributes), successCbId, errorCbId);    },    sendTags: function(tags) {        pushwooshImpl.sendTags(JSON.stringify(tags));    },    getTags: function(successCallback, errorCallback) {        if (!errorCallback) {            errorCallback = function(error) {};        }        var successCbId = _pwCallbackHelper.registerCallback(function(tagsString) {            console.log(\"tags: \" + tagsString);            successCallback(JSON.parse(tagsString));        });        var errorCbId = _pwCallbackHelper.registerCallback(errorCallback);        pushwooshImpl.getTags(successCbId, errorCbId);    },    isCommunicationEnabled: function() {        return pushwooshImpl.isCommunicationEnabled();    },    setCommunicationEnabled: function(enabled) {        pushwooshImpl.setCommunicationEnabled(enabled);    },    removeAllDeviceData: function() {        pushwooshImpl.removeAllDeviceData();    },    log: function(str) {        pushwooshImpl.log(str);    },    closeInApp: function() {        pushwooshImpl.closeInApp();    },    getHwid: function() {        return this._hwid;    },    getVersion: function() {        return this._version;    },    getCustomData: function() {         var customData = pushwooshImpl.getCustomData();         if (customData) {             return JSON.parse(customData);         } else {             return null;         }    },    registerForPushNotifications: function() {        pushwooshImpl.registerForPushNotifications();    },    openAppSettings: function() {        pushwooshImpl.openAppSettings();    },    getChannels: function(callback) {        var clb = _pwCallbackHelper.registerCallback(function(channels) {             callback(JSON.parse(channels));        });        pushwooshImpl.getChannels(clb);    },    unregisterForPushNotifications: function(callback) {        var clb = _pwCallbackHelper.registerCallback(callback);        pushwooshImpl.unregisterForPushNotifications(clb);    },    isRegisteredForPushNotifications: function(callback) {        var clb = _pwCallbackHelper.registerCallback(function(state) {           if (state == \'true\') {callback(true);} else if (state == \'false\') {callback(false);}        });        pushwooshImpl.isRegisteredForPushNotifications(clb);    }};}());"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public openAppSettings()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getInstance()Lcom/pushwoosh/internal/platform/AndroidPlatformModule;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_package"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v3, "app_uid"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public postEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pushwoosh/tags/Tags;->fromJson(Lorg/json/JSONObject;)Lcom/pushwoosh/tags/TagsBundle;

    move-result-object p2

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->i()Lcom/pushwoosh/inapp/c;

    move-result-object v0

    invoke-static {p0, p3, p4}, Lcom/pushwoosh/inapp/view/a/h;->a(Lcom/pushwoosh/inapp/view/a/g;Ljava/lang/String;Ljava/lang/String;)Lcom/pushwoosh/function/Callback;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/pushwoosh/inapp/c;->a(Ljava/lang/String;Lcom/pushwoosh/tags/TagsBundle;Lcom/pushwoosh/function/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "postEvent method was failed"

    invoke-static {p2, p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lcom/pushwoosh/inapp/view/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public registerForPushNotifications()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->g()Lcom/pushwoosh/notification/e;

    move-result-object v0

    invoke-static {}, Lcom/pushwoosh/inapp/view/a/j;->a()Lcom/pushwoosh/function/Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/notification/e;->a(Lcom/pushwoosh/function/Callback;)V

    :cond_0
    return-void
.end method

.method public removeAllDeviceData()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/pushwoosh/GDPRManager;->getInstance()Lcom/pushwoosh/GDPRManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pushwoosh/GDPRManager;->removeAllDeviceData(Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public sendTags(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/pushwoosh/tags/TagsBundle$Builder;

    invoke-direct {p1}, Lcom/pushwoosh/tags/TagsBundle$Builder;-><init>()V

    invoke-virtual {p1, v0}, Lcom/pushwoosh/tags/TagsBundle$Builder;->putAll(Lorg/json/JSONObject;)Lcom/pushwoosh/tags/TagsBundle$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/tags/TagsBundle$Builder;->build()Lcom/pushwoosh/tags/TagsBundle;

    move-result-object p1

    invoke-static {}, Lcom/pushwoosh/Pushwoosh;->getInstance()Lcom/pushwoosh/Pushwoosh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/Pushwoosh;->sendTags(Lcom/pushwoosh/tags/TagsBundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Invalid tags format, expected object with string properties"

    invoke-static {v0, p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setCommunicationEnabled(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/pushwoosh/GDPRManager;->getInstance()Lcom/pushwoosh/GDPRManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/pushwoosh/GDPRManager;->setCommunicationEnabled(ZLcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public unregisterForPushNotifications(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/pushwoosh/Pushwoosh;->getInstance()Lcom/pushwoosh/Pushwoosh;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/pushwoosh/inapp/view/a/k;->a(Lcom/pushwoosh/inapp/view/a/g;Ljava/lang/String;)Lcom/pushwoosh/function/Callback;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/pushwoosh/Pushwoosh;->unregisterForPushNotifications(Lcom/pushwoosh/function/Callback;)V

    return-void
.end method
