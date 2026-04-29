.class public final synthetic Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$ZQe_Xsa0OplZCH9I7qfMtrOQi6Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$ZQe_Xsa0OplZCH9I7qfMtrOQi6Q;->f$0:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

    iput-object p2, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$ZQe_Xsa0OplZCH9I7qfMtrOQi6Q;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$ZQe_Xsa0OplZCH9I7qfMtrOQi6Q;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$ZQe_Xsa0OplZCH9I7qfMtrOQi6Q;->f$0:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

    iget-object v1, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$ZQe_Xsa0OplZCH9I7qfMtrOQi6Q;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$ZQe_Xsa0OplZCH9I7qfMtrOQi6Q;->f$2:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;->lambda$logEvent$0$UniversalFirebaseAnalyticsModule(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
