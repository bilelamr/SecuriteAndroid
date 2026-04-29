.class public final synthetic Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$aM0CgFaeKtONDCCRZZGoXyDH_DY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;


# direct methods
.method public synthetic constructor <init>(Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$aM0CgFaeKtONDCCRZZGoXyDH_DY;->f$0:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$aM0CgFaeKtONDCCRZZGoXyDH_DY;->f$0:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

    invoke-virtual {v0}, Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;->lambda$resetAnalyticsData$8$UniversalFirebaseAnalyticsModule()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
