.class public Lcom/pushwoosh/inbox/PushwooshInboxPlugin;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/Plugin;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/internal/event/AppIdChangedEvent;)V
    .locals 0

    invoke-static {}, Lcom/pushwoosh/inbox/internal/b;->a()Lcom/pushwoosh/inbox/d/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/pushwoosh/inbox/d/b;->a()V

    return-void
.end method


# virtual methods
.method public getPrefsMigrationSchemes(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public init()V
    .locals 3

    new-instance v0, Lcom/pushwoosh/inbox/e/b/b;

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pushwoosh/inbox/e/b/b;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/pushwoosh/internal/network/NetworkModule;->getRequestManager()Lcom/pushwoosh/internal/network/RequestManager;

    move-result-object v1

    invoke-static {}, Lcom/pushwoosh/internal/platform/AndroidPlatformModule;->getPrefsProvider()Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pushwoosh/inbox/internal/b;->a(Lcom/pushwoosh/inbox/e/b/b;Lcom/pushwoosh/internal/network/RequestManager;Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;)V

    invoke-static {}, Lcom/pushwoosh/notification/handlers/message/system/MessageSystemHandleChainProvider;->getMessageSystemChain()Lcom/pushwoosh/internal/chain/Chain;

    move-result-object v0

    new-instance v1, Lcom/pushwoosh/inbox/c/a/a;

    invoke-direct {v1}, Lcom/pushwoosh/inbox/c/a/a;-><init>()V

    invoke-interface {v0, v1}, Lcom/pushwoosh/internal/chain/Chain;->addItem(Ljava/lang/Object;)V

    invoke-static {}, Lcom/pushwoosh/notification/handlers/notification/NotificationOpenHandlerChainProvider;->getNotificationOpenHandlerChain()Lcom/pushwoosh/internal/chain/Chain;

    move-result-object v0

    new-instance v1, Lcom/pushwoosh/inbox/c/a/b;

    invoke-direct {v1}, Lcom/pushwoosh/inbox/c/a/b;-><init>()V

    invoke-interface {v0, v1}, Lcom/pushwoosh/internal/chain/Chain;->addItem(Ljava/lang/Object;)V

    const-class v0, Lcom/pushwoosh/internal/event/AppIdChangedEvent;

    invoke-static {}, Lcom/pushwoosh/inbox/b;->a()Lcom/pushwoosh/internal/event/EventListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/event/EventBus;->subscribe(Ljava/lang/Class;Lcom/pushwoosh/internal/event/EventListener;)Lcom/pushwoosh/internal/event/Subscription;

    return-void
.end method
