.class public final synthetic Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$5Vcp9ETmuG_gh4oUNm60nEw0HwQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

.field private final synthetic f$1:Landroid/app/Activity;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$5Vcp9ETmuG_gh4oUNm60nEw0HwQ;->f$0:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

    iput-object p2, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$5Vcp9ETmuG_gh4oUNm60nEw0HwQ;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$5Vcp9ETmuG_gh4oUNm60nEw0HwQ;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$5Vcp9ETmuG_gh4oUNm60nEw0HwQ;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$5Vcp9ETmuG_gh4oUNm60nEw0HwQ;->f$0:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

    iget-object v1, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$5Vcp9ETmuG_gh4oUNm60nEw0HwQ;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$5Vcp9ETmuG_gh4oUNm60nEw0HwQ;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$5Vcp9ETmuG_gh4oUNm60nEw0HwQ;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;->lambda$setAnalyticsCollectionEnabled$2$UniversalFirebaseAnalyticsModule(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
