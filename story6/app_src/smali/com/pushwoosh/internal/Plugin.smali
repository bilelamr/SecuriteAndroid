.class public interface abstract Lcom/pushwoosh/internal/Plugin;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getPrefsMigrationSchemes(Lcom/pushwoosh/internal/platform/prefs/PrefsProvider;)Ljava/util/Collection;
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
.end method

.method public abstract init()V
.end method
