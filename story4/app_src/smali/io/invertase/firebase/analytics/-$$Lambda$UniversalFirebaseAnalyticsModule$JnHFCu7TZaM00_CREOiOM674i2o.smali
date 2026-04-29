.class public final synthetic Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$JnHFCu7TZaM00_CREOiOM674i2o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

.field private final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$JnHFCu7TZaM00_CREOiOM674i2o;->f$0:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

    iput-wide p2, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$JnHFCu7TZaM00_CREOiOM674i2o;->f$1:J

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$JnHFCu7TZaM00_CREOiOM674i2o;->f$0:Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;

    iget-wide v1, p0, Lio/invertase/firebase/analytics/-$$Lambda$UniversalFirebaseAnalyticsModule$JnHFCu7TZaM00_CREOiOM674i2o;->f$1:J

    invoke-virtual {v0, v1, v2}, Lio/invertase/firebase/analytics/UniversalFirebaseAnalyticsModule;->lambda$setMinimumSessionDuration$3$UniversalFirebaseAnalyticsModule(J)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
