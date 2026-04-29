.class public Lcom/pushwoosh/inapp/view/f;
.super Landroid/widget/FrameLayout;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field protected a:Landroid/widget/FrameLayout;

.field protected b:Landroid/webkit/WebView;

.field c:I

.field d:Z

.field private e:Lcom/pushwoosh/inapp/e/b/a;

.field private f:Landroid/view/View;

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/Runnable;

.field private j:Lcom/pushwoosh/richmedia/animation/RichMediaAnimation;

.field private k:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/pushwoosh/inapp/e/b/a;->a:Lcom/pushwoosh/inapp/e/b/a;

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/f;->e:Lcom/pushwoosh/inapp/e/b/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pushwoosh/inapp/view/f;->h:Z

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->j()Lcom/pushwoosh/richmedia/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/richmedia/a;->a()Lcom/pushwoosh/richmedia/RichMediaStyle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/pushwoosh/inapp/view/f;->a(Lcom/pushwoosh/inapp/e/b/a;Lcom/pushwoosh/richmedia/RichMediaStyle;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/pushwoosh/inapp/e/b/a;->a:Lcom/pushwoosh/inapp/e/b/a;

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/f;->e:Lcom/pushwoosh/inapp/e/b/a;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/pushwoosh/inapp/view/f;->h:Z

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object p2

    invoke-virtual {p2}, Lcom/pushwoosh/q;->j()Lcom/pushwoosh/richmedia/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/pushwoosh/richmedia/a;->a()Lcom/pushwoosh/richmedia/RichMediaStyle;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/pushwoosh/inapp/view/f;->a(Lcom/pushwoosh/inapp/e/b/a;Lcom/pushwoosh/richmedia/RichMediaStyle;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/pushwoosh/inapp/e/b/a;Lcom/pushwoosh/richmedia/RichMediaStyle;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/pushwoosh/inapp/e/b/a;->a:Lcom/pushwoosh/inapp/e/b/a;

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/f;->e:Lcom/pushwoosh/inapp/e/b/a;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/pushwoosh/inapp/view/f;->h:Z

    iput-boolean p4, p0, Lcom/pushwoosh/inapp/view/f;->d:Z

    invoke-direct {p0, p2, p3}, Lcom/pushwoosh/inapp/view/f;->a(Lcom/pushwoosh/inapp/e/b/a;Lcom/pushwoosh/richmedia/RichMediaStyle;)V

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const v0, 0x1030224

    goto :goto_0

    :cond_0
    const v0, 0x103006b

    :cond_1
    :goto_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    sget p1, Lcom/pushwoosh/R$layout;->pw_default_loading_view:I

    const/4 v0, 0x0

    invoke-static {v1, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method private a(Landroid/view/View;II)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    const-string p2, "backgroundColor"

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    const-wide/16 p2, 0x12c

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private a(Lcom/pushwoosh/inapp/e/b/a;Lcom/pushwoosh/richmedia/RichMediaStyle;)V
    .locals 2

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/f;->e:Lcom/pushwoosh/inapp/e/b/a;

    invoke-virtual {p2}, Lcom/pushwoosh/richmedia/RichMediaStyle;->getRichMediaAnimation()Lcom/pushwoosh/richmedia/animation/RichMediaAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/f;->j:Lcom/pushwoosh/richmedia/animation/RichMediaAnimation;

    invoke-virtual {p2}, Lcom/pushwoosh/richmedia/RichMediaStyle;->getBackgroundColor()I

    move-result v0

    iput v0, p0, Lcom/pushwoosh/inapp/view/f;->c:I

    iget v0, p0, Lcom/pushwoosh/inapp/view/f;->c:I

    if-nez v0, :cond_0

    const-string v0, "#40000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pushwoosh/inapp/view/f;->c:I

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/f;->a:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/f;->a:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/pushwoosh/inapp/view/f;->a(Lcom/pushwoosh/inapp/e/b/a;I)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/f;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/pushwoosh/inapp/view/f;->b()V

    invoke-virtual {p2}, Lcom/pushwoosh/richmedia/RichMediaStyle;->getLoadingViewCreator()Lcom/pushwoosh/richmedia/RichMediaStyle$a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/pushwoosh/richmedia/RichMediaStyle;->getLoadingViewCreator()Lcom/pushwoosh/richmedia/RichMediaStyle$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/pushwoosh/richmedia/RichMediaStyle$a;->a()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pushwoosh/inapp/view/f;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/pushwoosh/inapp/view/f;->f:Landroid/view/View;

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/f;->f:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/f;->a:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/pushwoosh/inapp/view/f;->b:Landroid/webkit/WebView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/f;->a:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/pushwoosh/inapp/view/f;->f:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/f;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/inapp/view/f;)V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/f;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/f;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/pushwoosh/inapp/view/f;->f:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method protected a()Landroid/webkit/WebView;
    .locals 2

    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected a(Lcom/pushwoosh/inapp/e/b/a;I)Landroid/widget/FrameLayout$LayoutParams;
    .locals 4

    sget-object v0, Lcom/pushwoosh/inapp/view/f$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    const/4 v3, -0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p2, 0x4

    if-ne v0, p2, :cond_0

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x11

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x30

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-boolean v0, p0, Lcom/pushwoosh/inapp/view/f;->d:Z

    if-nez v0, :cond_4

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_2
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x50

    :goto_0
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    :cond_3
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_4
    :goto_1
    return-object p1
.end method

.method protected a(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/f;->a:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/pushwoosh/inapp/view/f;->c:I

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/pushwoosh/inapp/view/f;->a(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/f;->j:Lcom/pushwoosh/richmedia/animation/RichMediaAnimation;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/pushwoosh/inapp/view/f;->b:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/pushwoosh/inapp/view/f;->a:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1, v2, p1}, Lcom/pushwoosh/richmedia/animation/RichMediaAnimation;->closeAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/pushwoosh/inapp/d/a;)V
    .locals 7

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/d/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/d/a;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    move-object v2, p1

    const-string p1, "<head>"

    const-string v1, "<head>\n<script type=\"text/javascript\">(function () {if (window.pushwoosh) return;window.pushwoosh = {    _hwid: \"%s\",    _version: \"%s\",    postEvent: function(event, attributes, successCallback, errorCallback) {        if (!attributes) {            attributes = {};        }        if (!successCallback) {            successCallback = function() {};        }        if (!errorCallback) {            errorCallback = function(error) {};        }        var successCbId = _pwCallbackHelper.registerCallback(successCallback);        var errorCbId = _pwCallbackHelper.registerCallback(errorCallback);        pushwooshImpl.postEvent(event, JSON.stringify(attributes), successCbId, errorCbId);    },    sendTags: function(tags) {        pushwooshImpl.sendTags(JSON.stringify(tags));    },    getTags: function(successCallback, errorCallback) {        if (!errorCallback) {            errorCallback = function(error) {};        }        var successCbId = _pwCallbackHelper.registerCallback(function(tagsString) {            console.log(\"tags: \" + tagsString);            successCallback(JSON.parse(tagsString));        });        var errorCbId = _pwCallbackHelper.registerCallback(errorCallback);        pushwooshImpl.getTags(successCbId, errorCbId);    },    isCommunicationEnabled: function() {        return pushwooshImpl.isCommunicationEnabled();    },    setCommunicationEnabled: function(enabled) {        pushwooshImpl.setCommunicationEnabled(enabled);    },    removeAllDeviceData: function() {        pushwooshImpl.removeAllDeviceData();    },    log: function(str) {        pushwooshImpl.log(str);    },    closeInApp: function() {        pushwooshImpl.closeInApp();    },    getHwid: function() {        return this._hwid;    },    getVersion: function() {        return this._version;    },    getCustomData: function() {         var customData = pushwooshImpl.getCustomData();         if (customData) {             return JSON.parse(customData);         } else {             return null;         }    },    registerForPushNotifications: function() {        pushwooshImpl.registerForPushNotifications();    },    openAppSettings: function() {        pushwooshImpl.openAppSettings();    },    getChannels: function(callback) {        var clb = _pwCallbackHelper.registerCallback(function(channels) {             callback(JSON.parse(channels));        });        pushwooshImpl.getChannels(clb);    },    unregisterForPushNotifications: function(callback) {        var clb = _pwCallbackHelper.registerCallback(callback);        pushwooshImpl.unregisterForPushNotifications(clb);    },    isRegisteredForPushNotifications: function(callback) {        var clb = _pwCallbackHelper.registerCallback(function(state) {           if (state == \'true\') {callback(true);} else if (state == \'false\') {callback(false);}        });        pushwooshImpl.isRegisteredForPushNotifications(clb);    }};}());</script>"

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/pushwoosh/inapp/view/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/f;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/f;->b:Landroid/webkit/WebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/pushwoosh/inapp/view/f;->a()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/f;->b:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/f;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/f;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/pushwoosh/inapp/view/f;->e:Lcom/pushwoosh/inapp/e/b/a;

    invoke-virtual {p0}, Lcom/pushwoosh/inapp/view/f;->getStatusBarHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/pushwoosh/inapp/view/f;->a(Lcom/pushwoosh/inapp/e/b/a;I)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/f;->b:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/f;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/f;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHapticFeedbackEnabled(Z)V

    return-void
.end method

.method protected c()V
    .locals 4

    iget-boolean v0, p0, Lcom/pushwoosh/inapp/view/f;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pushwoosh/inapp/view/f;->h:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/f;->k:Landroid/os/Handler;

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/f;->k:Landroid/os/Handler;

    invoke-static {p0}, Lcom/pushwoosh/inapp/view/g;->a(Lcom/pushwoosh/inapp/view/f;)Ljava/lang/Runnable;

    move-result-object v1

    iput-object v1, p0, Lcom/pushwoosh/inapp/view/f;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/f;->b:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method protected d()V
    .locals 4

    iget-boolean v0, p0, Lcom/pushwoosh/inapp/view/f;->h:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pushwoosh/inapp/view/f;->h:Z

    iget-object v1, p0, Lcom/pushwoosh/inapp/view/f;->k:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/pushwoosh/inapp/view/f;->i:Ljava/lang/Runnable;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/pushwoosh/inapp/view/f;->i:Ljava/lang/Runnable;

    :cond_1
    iput-object v3, p0, Lcom/pushwoosh/inapp/view/f;->k:Landroid/os/Handler;

    :cond_2
    iget-object v1, p0, Lcom/pushwoosh/inapp/view/f;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, p0, Lcom/pushwoosh/inapp/view/f;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method protected e()V
    .locals 3

    iget-boolean v0, p0, Lcom/pushwoosh/inapp/view/f;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/f;->a:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    iget v2, p0, Lcom/pushwoosh/inapp/view/f;->c:I

    invoke-direct {p0, v0, v1, v2}, Lcom/pushwoosh/inapp/view/f;->a(Landroid/view/View;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pushwoosh/inapp/view/f;->g:Z

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/f;->j:Lcom/pushwoosh/richmedia/animation/RichMediaAnimation;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/pushwoosh/inapp/view/f;->b:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/pushwoosh/inapp/view/f;->a:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1, v2}, Lcom/pushwoosh/richmedia/animation/RichMediaAnimation;->openAnimation(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inapp/view/f;->a:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/pushwoosh/inapp/view/f;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected f()V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/f;->b:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iput-object v1, p0, Lcom/pushwoosh/inapp/view/f;->b:Landroid/webkit/WebView;

    return-void
.end method

.method public getStatusBarHeight()I
    .locals 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected setWebViewClient(Lcom/pushwoosh/inapp/view/i;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/f;->b:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Lcom/pushwoosh/inapp/view/i;->a(Landroid/webkit/WebView;)V

    return-void
.end method
