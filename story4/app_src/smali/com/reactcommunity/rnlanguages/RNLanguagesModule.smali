.class public Lcom/reactcommunity/rnlanguages/RNLanguagesModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNLanguagesModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reactcommunity/rnlanguages/RNLanguagesModule$LanguagesBroadcastReceiver;
    }
.end annotation


# instance fields
.field private final mLanguagesBroadcastReceiver:Lcom/reactcommunity/rnlanguages/RNLanguagesModule$LanguagesBroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 29
    new-instance p1, Lcom/reactcommunity/rnlanguages/RNLanguagesModule$LanguagesBroadcastReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/reactcommunity/rnlanguages/RNLanguagesModule$LanguagesBroadcastReceiver;-><init>(Lcom/reactcommunity/rnlanguages/RNLanguagesModule;Lcom/reactcommunity/rnlanguages/RNLanguagesModule$1;)V

    iput-object p1, p0, Lcom/reactcommunity/rnlanguages/RNLanguagesModule;->mLanguagesBroadcastReceiver:Lcom/reactcommunity/rnlanguages/RNLanguagesModule$LanguagesBroadcastReceiver;

    .line 30
    invoke-direct {p0}, Lcom/reactcommunity/rnlanguages/RNLanguagesModule;->registerReceiver()V

    return-void
.end method

.method static synthetic access$100(Lcom/reactcommunity/rnlanguages/RNLanguagesModule;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/reactcommunity/rnlanguages/RNLanguagesModule;->sendLanguagesChangedEvent()V

    return-void
.end method

.method private getLanguages()Lcom/facebook/react/bridge/WritableArray;
    .locals 4

    .line 61
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 63
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    .line 67
    :goto_0
    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 68
    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/reactcommunity/rnlanguages/RNLanguagesModule;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 74
    invoke-direct {p0, v1}, Lcom/reactcommunity/rnlanguages/RNLanguagesModule;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private registerReceiver()V
    .locals 3

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/reactcommunity/rnlanguages/RNLanguagesModule;->mLanguagesBroadcastReceiver:Lcom/reactcommunity/rnlanguages/RNLanguagesModule$LanguagesBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private sendLanguagesChangedEvent()V
    .locals 4

    .line 50
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 51
    invoke-direct {p0}, Lcom/reactcommunity/rnlanguages/RNLanguagesModule;->getLanguages()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 53
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "language"

    invoke-interface {v0, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "languages"

    .line 54
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    .line 56
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    const-class v2, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v2, "languagesDidChange"

    .line 57
    invoke-interface {v1, v2, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 84
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "-"

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "^(iw|in|ji).*"

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "iw"

    const-string v1, "he"

    .line 99
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "in"

    const-string v1, "id"

    .line 100
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ji"

    const-string v1, "yi"

    .line 101
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method


# virtual methods
.method public getConstants()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    invoke-direct {p0}, Lcom/reactcommunity/rnlanguages/RNLanguagesModule;->getLanguages()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 43
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "language"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "languages"

    .line 44
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNLanguages"

    return-object v0
.end method
