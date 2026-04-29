.class public Landroidx/work/impl/constraints/trackers/Trackers;
.super Ljava/lang/Object;
.source "Trackers.java"


# static fields
.field private static sInstance:Landroidx/work/impl/constraints/trackers/Trackers;


# instance fields
.field private mBatteryChargingTracker:Landroidx/work/impl/constraints/trackers/BatteryChargingTracker;

.field private mBatteryNotLowTracker:Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

.field private mNetworkStateTracker:Landroidx/work/impl/constraints/trackers/NetworkStateTracker;

.field private mStorageNotLowTracker:Landroidx/work/impl/constraints/trackers/StorageNotLowTracker;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 60
    new-instance v0, Landroidx/work/impl/constraints/trackers/BatteryChargingTracker;

    invoke-direct {v0, p1}, Landroidx/work/impl/constraints/trackers/BatteryChargingTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/work/impl/constraints/trackers/Trackers;->mBatteryChargingTracker:Landroidx/work/impl/constraints/trackers/BatteryChargingTracker;

    .line 61
    new-instance v0, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    invoke-direct {v0, p1}, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/work/impl/constraints/trackers/Trackers;->mBatteryNotLowTracker:Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    .line 62
    new-instance v0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;

    invoke-direct {v0, p1}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/work/impl/constraints/trackers/Trackers;->mNetworkStateTracker:Landroidx/work/impl/constraints/trackers/NetworkStateTracker;

    .line 63
    new-instance v0, Landroidx/work/impl/constraints/trackers/StorageNotLowTracker;

    invoke-direct {v0, p1}, Landroidx/work/impl/constraints/trackers/StorageNotLowTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/work/impl/constraints/trackers/Trackers;->mStorageNotLowTracker:Landroidx/work/impl/constraints/trackers/StorageNotLowTracker;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroidx/work/impl/constraints/trackers/Trackers;
    .locals 2

    const-class v0, Landroidx/work/impl/constraints/trackers/Trackers;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Landroidx/work/impl/constraints/trackers/Trackers;->sInstance:Landroidx/work/impl/constraints/trackers/Trackers;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Landroidx/work/impl/constraints/trackers/Trackers;

    invoke-direct {v1, p0}, Landroidx/work/impl/constraints/trackers/Trackers;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroidx/work/impl/constraints/trackers/Trackers;->sInstance:Landroidx/work/impl/constraints/trackers/Trackers;

    .line 42
    :cond_0
    sget-object p0, Landroidx/work/impl/constraints/trackers/Trackers;->sInstance:Landroidx/work/impl/constraints/trackers/Trackers;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getBatteryChargingTracker()Landroidx/work/impl/constraints/trackers/BatteryChargingTracker;
    .locals 1

    .line 72
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/Trackers;->mBatteryChargingTracker:Landroidx/work/impl/constraints/trackers/BatteryChargingTracker;

    return-object v0
.end method

.method public getBatteryNotLowTracker()Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;
    .locals 1

    .line 81
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/Trackers;->mBatteryNotLowTracker:Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    return-object v0
.end method

.method public getNetworkStateTracker()Landroidx/work/impl/constraints/trackers/NetworkStateTracker;
    .locals 1

    .line 90
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/Trackers;->mNetworkStateTracker:Landroidx/work/impl/constraints/trackers/NetworkStateTracker;

    return-object v0
.end method

.method public getStorageNotLowTracker()Landroidx/work/impl/constraints/trackers/StorageNotLowTracker;
    .locals 1

    .line 99
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/Trackers;->mStorageNotLowTracker:Landroidx/work/impl/constraints/trackers/StorageNotLowTracker;

    return-object v0
.end method
