.class public Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "PushwooshPlugin.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$RegisterForPushNotificationCallback;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin; = null

.field private static final PUSH_OPEN_EVENT:Ljava/lang/String; = "PwPushOpened"

.field private static final PUSH_OPEN_JS_EVENT:Ljava/lang/String; = "pushOpened"

.field private static final PUSH_RECEIVED_EVENT:Ljava/lang/String; = "PUSH_RECEIVE_EVENT"

.field private static final PUSH_RECEIVED_JS_EVENT:Ljava/lang/String; = "pushReceived"

.field static final TAG:Ljava/lang/String; = "ReactNativePlugin"

.field private static mEventDispatcher:Lcom/pushwoosh/reactnativeplugin/EventDispatcher;

.field private static sInitialized:Z

.field private static sPushCallbackRegistered:Z

.field private static sReceivedPushCallbackRegistered:Z

.field private static sReceivedPushData:Ljava/lang/String;

.field private static sStartPushData:Ljava/lang/String;

.field private static final sStartPushLock:Ljava/lang/Object;


# instance fields
.field private inboxUiInboxUiStyleManager:Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/pushwoosh/reactnativeplugin/EventDispatcher;

    invoke-direct {v0}, Lcom/pushwoosh/reactnativeplugin/EventDispatcher;-><init>()V

    sput-object v0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->mEventDispatcher:Lcom/pushwoosh/reactnativeplugin/EventDispatcher;

    const/4 v0, 0x0

    .line 52
    sput-boolean v0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sReceivedPushCallbackRegistered:Z

    .line 55
    sput-boolean v0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sPushCallbackRegistered:Z

    .line 57
    sput-boolean v0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sInitialized:Z

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sStartPushLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 60
    sput-object v0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->INSTANCE:Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 65
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 67
    sput-object p0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->INSTANCE:Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;

    .line 69
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 71
    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 72
    new-instance v0, Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager;

    invoke-direct {v0, p1}, Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->inboxUiInboxUiStyleManager:Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager;

    return-void
.end method

.method static messageReceived(Ljava/lang/String;)V
    .locals 6

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Push received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReactNativePlugin"

    invoke-static {v1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :try_start_0
    sget-object v0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sStartPushLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :try_start_1
    sput-object p0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sReceivedPushData:Ljava/lang/String;

    .line 467
    sget-boolean v1, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sReceivedPushCallbackRegistered:Z

    if-eqz v1, :cond_0

    .line 468
    sget-object v1, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->mEventDispatcher:Lcom/pushwoosh/reactnativeplugin/EventDispatcher;

    const-string v2, "PUSH_RECEIVE_EVENT"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/pushwoosh/reactnativeplugin/ConversionUtil;->stringToJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/pushwoosh/reactnativeplugin/ConversionUtil;->toWritableMap(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/pushwoosh/reactnativeplugin/EventDispatcher;->dispatchEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    :cond_0
    sget-boolean v1, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sInitialized:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->INSTANCE:Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;

    if-eqz v1, :cond_1

    .line 471
    sget-object v1, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->INSTANCE:Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;

    const-string v2, "pushReceived"

    invoke-static {p0}, Lcom/pushwoosh/reactnativeplugin/ConversionUtil;->stringToJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sendEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 473
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 476
    invoke-static {p0}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static openPush(Ljava/lang/String;)V
    .locals 6

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Push open: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReactNativePlugin"

    invoke-static {v1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :try_start_0
    sget-object v0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sStartPushLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :try_start_1
    sput-object p0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sStartPushData:Ljava/lang/String;

    .line 444
    sget-boolean v1, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sPushCallbackRegistered:Z

    if-eqz v1, :cond_0

    .line 445
    sget-object v1, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->mEventDispatcher:Lcom/pushwoosh/reactnativeplugin/EventDispatcher;

    const-string v2, "PwPushOpened"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/pushwoosh/reactnativeplugin/ConversionUtil;->stringToJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/pushwoosh/reactnativeplugin/ConversionUtil;->toWritableMap(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/pushwoosh/reactnativeplugin/EventDispatcher;->dispatchEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    :cond_0
    sget-boolean v1, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sInitialized:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->INSTANCE:Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;

    if-eqz v1, :cond_1

    .line 448
    sget-object v1, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->INSTANCE:Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;

    const-string v2, "pushOpened"

    invoke-static {p0}, Lcom/pushwoosh/reactnativeplugin/ConversionUtil;->stringToJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sendEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 450
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 453
    invoke-static {p0}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private sendEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 458
    sget-object v0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->mEventDispatcher:Lcom/pushwoosh/reactnativeplugin/EventDispatcher;

    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-static {p2}, Lcom/pushwoosh/reactnativeplugin/ConversionUtil;->toWritableMap(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lcom/pushwoosh/reactnativeplugin/EventDispatcher;->sendJSEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method


# virtual methods
.method public addToApplicationIconBadgeNumber(I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 269
    invoke-static {p1}, Lcom/pushwoosh/badge/PushwooshBadge;->addBadgeNumber(I)V

    return-void
.end method

.method public clearLocalNotification()V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 254
    invoke-static {}, Lcom/pushwoosh/notification/LocalNotificationReceiver;->cancelAll()V

    return-void
.end method

.method public createLocalNotification(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 227
    invoke-static {p1}, Lcom/pushwoosh/reactnativeplugin/ConversionUtil;->toJsonObject(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "msg"

    .line 229
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "seconds"

    .line 233
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 234
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "userData"

    .line 235
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v3, "u"

    .line 237
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_1
    new-instance p1, Lcom/pushwoosh/notification/LocalNotification$Builder;

    invoke-direct {p1}, Lcom/pushwoosh/notification/LocalNotification$Builder;-><init>()V

    .line 242
    invoke-virtual {p1, v2}, Lcom/pushwoosh/notification/LocalNotification$Builder;->setExtras(Landroid/os/Bundle;)Lcom/pushwoosh/notification/LocalNotification$Builder;

    .line 245
    invoke-virtual {p1, v0}, Lcom/pushwoosh/notification/LocalNotification$Builder;->setMessage(Ljava/lang/String;)Lcom/pushwoosh/notification/LocalNotification$Builder;

    move-result-object p1

    .line 246
    invoke-virtual {p1, v1}, Lcom/pushwoosh/notification/LocalNotification$Builder;->setDelay(I)Lcom/pushwoosh/notification/LocalNotification$Builder;

    move-result-object p1

    .line 247
    invoke-virtual {p1}, Lcom/pushwoosh/notification/LocalNotification$Builder;->build()Lcom/pushwoosh/notification/LocalNotification;

    move-result-object p1

    .line 249
    invoke-static {}, Lcom/pushwoosh/Pushwoosh;->getInstance()Lcom/pushwoosh/Pushwoosh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/Pushwoosh;->scheduleLocalNotification(Lcom/pushwoosh/notification/LocalNotification;)Lcom/pushwoosh/notification/LocalNotificationRequest;

    return-void
.end method

.method public getApplicationIconBadgeNumber(Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 264
    invoke-static {}, Lcom/pushwoosh/badge/PushwooshBadge;->getBadgeNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public getHwid(Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 211
    invoke-static {}, Lcom/pushwoosh/Pushwoosh;->getInstance()Lcom/pushwoosh/Pushwoosh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/Pushwoosh;->getHwid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Pushwoosh"

    return-object v0
.end method

.method public getPushToken(Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 206
    invoke-static {}, Lcom/pushwoosh/Pushwoosh;->getInstance()Lcom/pushwoosh/Pushwoosh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/Pushwoosh;->getPushToken()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public getTags(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 188
    invoke-static {}, Lcom/pushwoosh/Pushwoosh;->getInstance()Lcom/pushwoosh/Pushwoosh;

    move-result-object v0

    new-instance v1, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$3;-><init>(Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Lcom/pushwoosh/Pushwoosh;->getTags(Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public getUnReadMessagesCount(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 392
    new-instance v0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$6;-><init>(Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-static {v0}, Lcom/pushwoosh/inbox/PushwooshInbox;->unreadMessagesCount(Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public init(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "pw_appid"

    .line 87
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "project_number"

    .line 88
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {}, Lcom/pushwoosh/Pushwoosh;->getInstance()Lcom/pushwoosh/Pushwoosh;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/pushwoosh/Pushwoosh;->setAppId(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/pushwoosh/Pushwoosh;->getInstance()Lcom/pushwoosh/Pushwoosh;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/pushwoosh/Pushwoosh;->setSenderId(Ljava/lang/String;)V

    .line 100
    sget-object p1, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sStartPushLock:Ljava/lang/Object;

    monitor-enter p1

    .line 101
    :try_start_0
    sget-object p3, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sReceivedPushData:Ljava/lang/String;

    if-eqz p3, :cond_1

    const-string p3, "pushReceived"

    .line 102
    sget-object v0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sReceivedPushData:Ljava/lang/String;

    invoke-static {v0}, Lcom/pushwoosh/reactnativeplugin/ConversionUtil;->stringToJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sendEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 105
    :cond_1
    sget-object p3, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sStartPushData:Ljava/lang/String;

    if-eqz p3, :cond_2

    const-string p3, "pushOpened"

    .line 106
    sget-object v0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sStartPushData:Ljava/lang/String;

    invoke-static {v0}, Lcom/pushwoosh/reactnativeplugin/ConversionUtil;->stringToJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sendEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 108
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    sput-boolean v2, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sInitialized:Z

    if-eqz p2, :cond_3

    new-array p1, v1, [Ljava/lang/Object;

    .line 113
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p2

    .line 108
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_4
    :goto_0
    if-eqz p3, :cond_5

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "Pushwoosh Application id and GCM project number not specified"

    aput-object p2, p1, v1

    .line 92
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public isAvailableGDPR(Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 340
    invoke-static {}, Lcom/pushwoosh/GDPRManager;->getInstance()Lcom/pushwoosh/GDPRManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/GDPRManager;->isAvailable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public isCommunicationEnabled(Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 335
    invoke-static {}, Lcom/pushwoosh/GDPRManager;->getInstance()Lcom/pushwoosh/GDPRManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/GDPRManager;->isCommunicationEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public isDeviceDataRemoved(Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 330
    invoke-static {}, Lcom/pushwoosh/GDPRManager;->getInstance()Lcom/pushwoosh/GDPRManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/GDPRManager;->isDeviceDataRemoved()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public onHostDestroy()V
    .locals 2

    const-string v0, "ReactNativePlugin"

    const-string v1, "Host destroyed"

    .line 425
    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 427
    sput-boolean v0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sPushCallbackRegistered:Z

    const/4 v1, 0x0

    .line 428
    sput-object v1, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sStartPushData:Ljava/lang/String;

    .line 430
    sput-boolean v0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sReceivedPushCallbackRegistered:Z

    .line 431
    sput-object v1, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sReceivedPushData:Ljava/lang/String;

    return-void
.end method

.method public onHostPause()V
    .locals 2

    const-string v0, "ReactNativePlugin"

    const-string v1, "Host paused"

    .line 420
    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onHostResume()V
    .locals 2

    const-string v0, "ReactNativePlugin"

    const-string v1, "Host resumed"

    .line 415
    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPushOpen(Lcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 142
    sget-object v0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sStartPushLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    sget-boolean v1, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sPushCallbackRegistered:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    sget-object v1, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sStartPushData:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 144
    sget-object v4, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sStartPushData:Ljava/lang/String;

    invoke-static {v4}, Lcom/pushwoosh/reactnativeplugin/ConversionUtil;->stringToJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/pushwoosh/reactnativeplugin/ConversionUtil;->toWritableMap(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 145
    sput-boolean v2, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sPushCallbackRegistered:Z

    .line 146
    monitor-exit v0

    return-void

    .line 149
    :cond_0
    sput-boolean v2, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sPushCallbackRegistered:Z

    .line 150
    sget-object v1, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->mEventDispatcher:Lcom/pushwoosh/reactnativeplugin/EventDispatcher;

    const-string v2, "PwPushOpened"

    invoke-virtual {v1, v2, p1}, Lcom/pushwoosh/reactnativeplugin/EventDispatcher;->subscribe(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    .line 151
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onPushReceived(Lcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 156
    sget-object v0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sStartPushLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_0
    sget-boolean v1, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sReceivedPushCallbackRegistered:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    sget-object v1, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sReceivedPushData:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 158
    sget-object v4, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sReceivedPushData:Ljava/lang/String;

    invoke-static {v4}, Lcom/pushwoosh/reactnativeplugin/ConversionUtil;->stringToJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/pushwoosh/reactnativeplugin/ConversionUtil;->toWritableMap(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 159
    sput-boolean v2, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sReceivedPushCallbackRegistered:Z

    .line 160
    monitor-exit v0

    return-void

    .line 163
    :cond_0
    sput-boolean v2, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->sReceivedPushCallbackRegistered:Z

    .line 164
    sget-object v1, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->mEventDispatcher:Lcom/pushwoosh/reactnativeplugin/EventDispatcher;

    const-string v2, "PUSH_RECEIVE_EVENT"

    invoke-virtual {v1, v2, p1}, Lcom/pushwoosh/reactnativeplugin/EventDispatcher;->subscribe(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    .line 165
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public postEvent(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 221
    invoke-static {}, Lcom/pushwoosh/inapp/PushwooshInApp;->getInstance()Lcom/pushwoosh/inapp/PushwooshInApp;

    move-result-object v0

    invoke-static {p2}, Lcom/pushwoosh/reactnativeplugin/ConversionUtil;->convertToTagsBundle(Lcom/facebook/react/bridge/ReadableMap;)Lcom/pushwoosh/tags/TagsBundle;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/pushwoosh/inapp/PushwooshInApp;->postEvent(Ljava/lang/String;Lcom/pushwoosh/tags/TagsBundle;)V

    return-void
.end method

.method public presentInboxUI(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    if-eqz p1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;->inboxUiInboxUiStyleManager:Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager;->setStyle(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    .line 310
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pushwoosh/inbox/ui/presentation/view/activity/InboxActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_1

    .line 312
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string p1, "ReactNativePlugin"

    const-string v0, "current activity is null"

    .line 314
    invoke-static {p1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public register(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 119
    invoke-static {}, Lcom/pushwoosh/Pushwoosh;->getInstance()Lcom/pushwoosh/Pushwoosh;

    move-result-object v0

    new-instance v1, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$RegisterForPushNotificationCallback;

    invoke-direct {v1, p0, p1, p2}, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$RegisterForPushNotificationCallback;-><init>(Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Lcom/pushwoosh/Pushwoosh;->registerForPushNotifications(Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public removeAllDeviceData(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 363
    invoke-static {}, Lcom/pushwoosh/GDPRManager;->getInstance()Lcom/pushwoosh/GDPRManager;

    move-result-object v0

    new-instance v1, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$5;-><init>(Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Lcom/pushwoosh/GDPRManager;->removeAllDeviceData(Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public setApplicationIconBadgeNumber(I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 259
    invoke-static {p1}, Lcom/pushwoosh/badge/PushwooshBadge;->setBadgeNumber(I)V

    return-void
.end method

.method public setColorLED(I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 289
    invoke-static {p1}, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->setColorLED(I)V

    return-void
.end method

.method public setCommunicationEnabled(ZLcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 345
    invoke-static {}, Lcom/pushwoosh/GDPRManager;->getInstance()Lcom/pushwoosh/GDPRManager;

    move-result-object v0

    new-instance v1, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$4;

    invoke-direct {v1, p0, p2, p3}, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$4;-><init>(Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, p1, v1}, Lcom/pushwoosh/GDPRManager;->setCommunicationEnabled(ZLcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public setEnableLED(Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 284
    invoke-static {p1}, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->setEnableLED(Z)V

    return-void
.end method

.method public setLightScreenOnNotification(Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 279
    invoke-static {p1}, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->setLightScreenOnNotification(Z)V

    return-void
.end method

.method public setMultiNotificationMode(Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 274
    invoke-static {p1}, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->setMultiNotificationMode(Z)V

    return-void
.end method

.method public setNotificationIconBackgroundColor(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 383
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 384
    invoke-static {p1}, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->setNotificationIconBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 386
    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setSoundType(I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 294
    invoke-static {p1}, Lcom/pushwoosh/notification/SoundType;->fromInt(I)Lcom/pushwoosh/notification/SoundType;

    move-result-object p1

    invoke-static {p1}, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->setSoundNotificationType(Lcom/pushwoosh/notification/SoundType;)V

    return-void
.end method

.method public setTags(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 170
    invoke-static {}, Lcom/pushwoosh/Pushwoosh;->getInstance()Lcom/pushwoosh/Pushwoosh;

    move-result-object v0

    invoke-static {p1}, Lcom/pushwoosh/reactnativeplugin/ConversionUtil;->convertToTagsBundle(Lcom/facebook/react/bridge/ReadableMap;)Lcom/pushwoosh/tags/TagsBundle;

    move-result-object p1

    new-instance v1, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$2;-><init>(Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, p1, v1}, Lcom/pushwoosh/Pushwoosh;->sendTags(Lcom/pushwoosh/tags/TagsBundle;Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 216
    invoke-static {}, Lcom/pushwoosh/inapp/PushwooshInApp;->getInstance()Lcom/pushwoosh/inapp/PushwooshInApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inapp/PushwooshInApp;->setUserId(Ljava/lang/String;)V

    return-void
.end method

.method public setVibrateType(I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 299
    invoke-static {p1}, Lcom/pushwoosh/notification/VibrateType;->fromInt(I)Lcom/pushwoosh/notification/VibrateType;

    move-result-object p1

    invoke-static {p1}, Lcom/pushwoosh/notification/PushwooshNotificationSettings;->setVibrateNotificationType(Lcom/pushwoosh/notification/VibrateType;)V

    return-void
.end method

.method public showGDPRConsentUI()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 320
    invoke-static {}, Lcom/pushwoosh/GDPRManager;->getInstance()Lcom/pushwoosh/GDPRManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/GDPRManager;->showGDPRConsentUI()V

    return-void
.end method

.method public showGDPRDeletionUI()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 325
    invoke-static {}, Lcom/pushwoosh/GDPRManager;->getInstance()Lcom/pushwoosh/GDPRManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/GDPRManager;->showGDPRDeletionUI()V

    return-void
.end method

.method public unregister(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 124
    invoke-static {}, Lcom/pushwoosh/Pushwoosh;->getInstance()Lcom/pushwoosh/Pushwoosh;

    move-result-object v0

    new-instance v1, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin$1;-><init>(Lcom/pushwoosh/reactnativeplugin/PushwooshPlugin;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Lcom/pushwoosh/Pushwoosh;->unregisterForPushNotifications(Lcom/pushwoosh/function/Callback;)V

    return-void
.end method
