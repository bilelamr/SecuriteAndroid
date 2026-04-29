.class public final synthetic Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$gtG_bdqJJMx5tzdt-g1GVqbw36s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$gtG_bdqJJMx5tzdt-g1GVqbw36s;->f$0:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

    iput-object p2, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$gtG_bdqJJMx5tzdt-g1GVqbw36s;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$gtG_bdqJJMx5tzdt-g1GVqbw36s;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$gtG_bdqJJMx5tzdt-g1GVqbw36s;->f$0:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

    iget-object v1, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$gtG_bdqJJMx5tzdt-g1GVqbw36s;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$gtG_bdqJJMx5tzdt-g1GVqbw36s;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;->lambda$setUserProperty$6$UniversalFirebaseAnalyticsModule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
