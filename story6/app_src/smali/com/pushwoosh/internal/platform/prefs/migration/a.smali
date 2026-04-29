.class public Lcom/pushwoosh/internal/platform/prefs/migration/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/platform/prefs/migration/b;


# instance fields
.field private final a:Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;


# direct methods
.method public constructor <init>(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/internal/platform/prefs/migration/a;->a:Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;

    iget-object v1, p0, Lcom/pushwoosh/internal/platform/prefs/migration/a;->a:Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;

    invoke-virtual {v0, v1}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;->a(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;)V

    goto :goto_0

    :cond_0
    return-void
.end method
