.class public Lcom/RNFetchBlob/RNFetchBlobProgressConfig;
.super Ljava/lang/Object;
.source "RNFetchBlobProgressConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;
    }
.end annotation


# instance fields
.field private count:I

.field private enable:Z

.field private interval:I

.field private lastTick:J

.field private tick:I


# direct methods
.method constructor <init>(ZIILcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/RNFetchBlob/RNFetchBlobProgressConfig;->lastTick:J

    const/4 p4, 0x0

    .line 14
    iput p4, p0, Lcom/RNFetchBlob/RNFetchBlobProgressConfig;->tick:I

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/RNFetchBlob/RNFetchBlobProgressConfig;->count:I

    .line 16
    iput v0, p0, Lcom/RNFetchBlob/RNFetchBlobProgressConfig;->interval:I

    .line 17
    iput-boolean p4, p0, Lcom/RNFetchBlob/RNFetchBlobProgressConfig;->enable:Z

    .line 18
    sget-object p4, Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;->Download:Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;

    .line 21
    iput-boolean p1, p0, Lcom/RNFetchBlob/RNFetchBlobProgressConfig;->enable:Z

    .line 22
    iput p2, p0, Lcom/RNFetchBlob/RNFetchBlobProgressConfig;->interval:I

    .line 24
    iput p3, p0, Lcom/RNFetchBlob/RNFetchBlobProgressConfig;->count:I

    return-void
.end method


# virtual methods
.method public shouldReport(F)Z
    .locals 7

    .line 29
    iget v0, p0, Lcom/RNFetchBlob/RNFetchBlobProgressConfig;->count:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-double v3, p1

    .line 30
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    iget p1, p0, Lcom/RNFetchBlob/RNFetchBlobProgressConfig;->tick:I

    int-to-double v5, p1

    cmpl-double p1, v3, v5

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 31
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/RNFetchBlob/RNFetchBlobProgressConfig;->lastTick:J

    sub-long/2addr v3, v5

    iget v0, p0, Lcom/RNFetchBlob/RNFetchBlobProgressConfig;->interval:I

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/RNFetchBlob/RNFetchBlobProgressConfig;->enable:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 33
    iget p1, p0, Lcom/RNFetchBlob/RNFetchBlobProgressConfig;->tick:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/RNFetchBlob/RNFetchBlobProgressConfig;->tick:I

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/RNFetchBlob/RNFetchBlobProgressConfig;->lastTick:J

    :cond_3
    return v1
.end method
