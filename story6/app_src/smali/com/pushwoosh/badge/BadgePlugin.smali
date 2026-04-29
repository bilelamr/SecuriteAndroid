.class public Lcom/pushwoosh/badge/BadgePlugin;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/Plugin;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    invoke-static {p1}, Lcom/pushwoosh/badge/b/a;->a(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;)Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public init()V
    .locals 2

    invoke-static {}, Lcom/pushwoosh/notification/handlers/message/user/MessageHandleChainProvider;->getHandleProcessor()Lcom/pushwoosh/internal/chain/Chain;

    move-result-object v0

    new-instance v1, Lcom/pushwoosh/badge/a/a;

    invoke-direct {v1}, Lcom/pushwoosh/badge/a/a;-><init>()V

    invoke-interface {v0, v1}, Lcom/pushwoosh/internal/chain/Chain;->addItem(Ljava/lang/Object;)V

    invoke-static {}, Lcom/pushwoosh/badge/a;->a()V

    return-void
.end method
