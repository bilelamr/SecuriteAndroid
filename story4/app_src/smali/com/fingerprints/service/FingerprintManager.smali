.class public Lcom/fingerprints/service/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingerprints/service/FingerprintManager$EventHandler;,
        Lcom/fingerprints/service/FingerprintManager$DeleteTemplateCallback;,
        Lcom/fingerprints/service/FingerprintManager$AlipayIdentifyCallback;,
        Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;,
        Lcom/fingerprints/service/FingerprintManager$EnrolCallback;,
        Lcom/fingerprints/service/FingerprintManager$GuidedRect;,
        Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;,
        Lcom/fingerprints/service/FingerprintManager$GuidedResult;,
        Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;,
        Lcom/fingerprints/service/FingerprintManager$GuidedData;,
        Lcom/fingerprints/service/FingerprintManager$GuidedDataCallback;,
        Lcom/fingerprints/service/FingerprintManager$CaptureCallback;,
        Lcom/fingerprints/service/FingerprintManager$IdentifyListener;
    }
.end annotation


# static fields
.field static final ARG_IDENTIFY_UPDATED:I = 0x1

.field public static final CAPTURE_FAILED_TOO_FAST:I = 0x1

.field public static final DELETE_TEMPLATES_SUCCESS:I = 0x1

.field static final FPC_GUIDE_DATA_INVALID:I = -0x80000000

.field static final FPC_GUIDE_DIRECTION_E:I = 0x7

.field static final FPC_GUIDE_DIRECTION_N:I = 0x5

.field static final FPC_GUIDE_DIRECTION_NA:I = 0x0

.field static final FPC_GUIDE_DIRECTION_NE:I = 0x6

.field static final FPC_GUIDE_DIRECTION_NW:I = 0x4

.field static final FPC_GUIDE_DIRECTION_S:I = 0x2

.field static final FPC_GUIDE_DIRECTION_SE:I = 0x3

.field static final FPC_GUIDE_DIRECTION_SW:I = 0x1

.field static final FPC_GUIDE_DIRECTION_W:I = 0x8

.field static final INTERNEL_FINGERDOWN_TIMEOUT:I = 0xbb8

.field static final MEG_FINGERDOWN_TIMEOUT:I = 0x1a

.field public static final MEG_WAIT_FINGERDOWN_TIMEOUT:I = 0x15

.field public static final MSG_CAPTURE_FAILED:I = 0x13

.field public static final MSG_DELETE_RESULT:I = 0x1e

.field static final MSG_ENROLMENT_DATA_IMAGE_QUALITY:I = 0xe

.field static final MSG_ENROLMENT_DATA_IMAGE_STITCHED:I = 0x12

.field static final MSG_ENROLMENT_DATA_IMMOBILE:I = 0xf

.field static final MSG_ENROLMENT_DATA_NEXT_DIRECTION:I = 0x10

.field static final MSG_ENROLMENT_DATA_PROGRESS:I = 0x11

.field static final MSG_ENROLMENT_DONE:I = 0x5

.field static final MSG_ENROLMENT_FAILED:I = 0x8

.field static final MSG_ENROLMENT_LAST_TOUCH:I = 0xb

.field static final MSG_ENROLMENT_MASK_LIST:I = 0xd

.field static final MSG_ENROLMENT_NEXT_TOUCH:I = 0xc

.field static final MSG_ENROLMENT_SEND_GUIDE_DATA:I = 0xa

.field static final MSG_ENROLMENT_TOUCHES_QUALITY:I = 0x9

.field static final MSG_ENROL_PROGRESS:I = 0x4

.field public static final MSG_FINGER_PRESENT:I = 0x2

.field public static final MSG_FINGER_UP:I = 0x3

.field public static final MSG_IDENTIFY_MATCH:I = 0x6

.field public static final MSG_IDENTIFY_NO_MATCH:I = 0x7

.field public static final MSG_NOT_ENABLED:I = 0x16

.field public static final MSG_NOT_ENROLLED:I = 0x14

.field public static final MSG_SENSOR_ERROR:I = 0x19

.field public static final MSG_UNKNOWN:I = 0x17

.field public static final MSG_USER_CANCEL:I = 0x18

.field public static final MSG_WAITING_FINGER:I = 0x1

.field private static TAG:Ljava/lang/String; = "MzFingerManager"

.field private static mBundle:Landroid/os/Bundle;

.field private static mGuidedDataBundle:Landroid/os/Bundle;


# instance fields
.field private mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

.field private mClient:Lcom/fingerprints/service/IFingerprintClient;

.field private mDeleteTemplateCallback:Lcom/fingerprints/service/FingerprintManager$DeleteTemplateCallback;

.field private mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

.field private mEventhHandler:Lcom/fingerprints/service/FingerprintManager$EventHandler;

.field private mGuidedDataCallback:Lcom/fingerprints/service/FingerprintManager$GuidedDataCallback;

.field private mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

.field private mIdentifyListener:Lcom/fingerprints/service/FingerprintManager$IdentifyListener;

.field private mReadyToStore:Z

.field private mService:Lcom/fingerprints/service/IFingerprintService;

.field private mUserdata:I

.field mzHanderThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/os/IBinder;Landroid/os/Looper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 72
    iput v0, p0, Lcom/fingerprints/service/FingerprintManager;->mUserdata:I

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/fingerprints/service/FingerprintManager;->mReadyToStore:Z

    .line 576
    invoke-static {p1}, Lcom/fingerprints/service/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/IFingerprintService;

    move-result-object p1

    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    if-nez p2, :cond_0

    .line 579
    sget-object p1, Lcom/fingerprints/service/FingerprintManager;->TAG:Ljava/lang/String;

    const-string p2, " create--------HandlerThread  "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "result_handler"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager;->mzHanderThread:Landroid/os/HandlerThread;

    .line 581
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager;->mzHanderThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 582
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager;->mzHanderThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    .line 585
    :cond_0
    sget-object p1, Lcom/fingerprints/service/FingerprintManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get fp method time, mService = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    new-instance p1, Lcom/fingerprints/service/FingerprintManager$EventHandler;

    invoke-direct {p1, p0, p2}, Lcom/fingerprints/service/FingerprintManager$EventHandler;-><init>(Lcom/fingerprints/service/FingerprintManager;Landroid/os/Looper;)V

    .line 587
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    sput-object p2, Lcom/fingerprints/service/FingerprintManager;->mBundle:Landroid/os/Bundle;

    .line 588
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    sput-object p2, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    .line 590
    new-instance p2, Lcom/fingerprints/service/FingerprintManager$1;

    invoke-direct {p2, p0}, Lcom/fingerprints/service/FingerprintManager$1;-><init>(Lcom/fingerprints/service/FingerprintManager;)V

    iput-object p2, p0, Lcom/fingerprints/service/FingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    .line 633
    iget-object p2, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {p2, v0}, Lcom/fingerprints/service/IFingerprintService;->open(Lcom/fingerprints/service/IFingerprintClient;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 636
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager;->mEventhHandler:Lcom/fingerprints/service/FingerprintManager$EventHandler;

    return-void

    .line 634
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method private PackGuidedData()V
    .locals 19

    move-object/from16 v8, p0

    .line 234
    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v1, "progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 235
    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v1, "next_direction"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 236
    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v1, "acceptance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 237
    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v1, "stitched"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 238
    :goto_0
    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v1, "immobile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    .line 239
    :goto_1
    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v1, "reject_reason"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 240
    sget-object v1, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v5, "maskNumber"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    if-eq v0, v10, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x11

    if-eq v0, v1, :cond_3

    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 255
    :goto_3
    new-instance v5, Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;

    invoke-direct {v5, v8, v0, v1}, Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;-><init>(Lcom/fingerprints/service/FingerprintManager;ZZ)V

    .line 256
    new-instance v12, Lcom/fingerprints/service/FingerprintManager$GuidedResult;

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/fingerprints/service/FingerprintManager$GuidedResult;-><init>(Lcom/fingerprints/service/FingerprintManager;IZZLcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;)V

    .line 257
    new-instance v2, Landroid/graphics/Point;

    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v1, "lastTouch"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    aget v0, v0, v9

    sget-object v3, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    aget v3, v3, v10

    invoke-direct {v2, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 258
    new-instance v3, Landroid/graphics/Point;

    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v4, 0x2

    aget v0, v0, v4

    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v13, 0x3

    aget v5, v5, v13

    invoke-direct {v3, v0, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 259
    new-instance v5, Landroid/graphics/Point;

    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v14, 0x4

    aget v0, v0, v14

    sget-object v15, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    invoke-virtual {v15, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v15

    const/16 v16, 0x5

    aget v15, v15, v16

    invoke-direct {v5, v0, v15}, Landroid/graphics/Point;-><init>(II)V

    .line 260
    new-instance v15, Landroid/graphics/Point;

    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    const/16 v17, 0x6

    aget v0, v0, v17

    sget-object v14, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    invoke-virtual {v14, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const/4 v14, 0x7

    aget v1, v1, v14

    invoke-direct {v15, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 261
    new-instance v1, Landroid/graphics/Point;

    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v14, "nextTouch"

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    aget v0, v0, v9

    sget-object v9, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v9

    aget v9, v9, v10

    invoke-direct {v1, v0, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 262
    new-instance v9, Landroid/graphics/Point;

    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    aget v0, v0, v4

    sget-object v4, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    aget v4, v4, v13

    invoke-direct {v9, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 263
    new-instance v10, Landroid/graphics/Point;

    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v4, 0x4

    aget v0, v0, v4

    sget-object v4, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    aget v4, v4, v16

    invoke-direct {v10, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 264
    new-instance v13, Landroid/graphics/Point;

    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    aget v0, v0, v17

    sget-object v4, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    const/4 v14, 0x7

    aget v4, v4, v14

    invoke-direct {v13, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 265
    new-instance v14, Lcom/fingerprints/service/FingerprintManager$GuidedRect;

    move-object v0, v14

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    move-object v4, v5

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/fingerprints/service/FingerprintManager$GuidedRect;-><init>(Lcom/fingerprints/service/FingerprintManager;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 266
    new-instance v15, Lcom/fingerprints/service/FingerprintManager$GuidedRect;

    move-object v0, v15

    move-object/from16 v2, v16

    move-object v3, v9

    move-object v4, v10

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/fingerprints/service/FingerprintManager$GuidedRect;-><init>(Lcom/fingerprints/service/FingerprintManager;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 268
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v11, :cond_4

    .line 280
    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v1, "maskList"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    mul-int/lit8 v2, v10, 0x8

    add-int/lit8 v3, v2, 0x0

    aget v0, v0, v3

    .line 281
    sget-object v3, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    aget v3, v3, v4

    .line 282
    sget-object v4, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    add-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    .line 283
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    add-int/lit8 v13, v2, 0x3

    aget v5, v5, v13

    .line 284
    sget-object v13, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    invoke-virtual {v13, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v13

    add-int/lit8 v16, v2, 0x4

    aget v13, v13, v16

    move-object/from16 v16, v15

    .line 285
    sget-object v15, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    invoke-virtual {v15, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v15

    add-int/lit8 v17, v2, 0x5

    aget v15, v15, v17

    move-object/from16 v17, v14

    .line 286
    sget-object v14, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    invoke-virtual {v14, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v14

    add-int/lit8 v18, v2, 0x6

    aget v14, v14, v18

    move-object/from16 v18, v12

    .line 287
    sget-object v12, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    invoke-virtual {v12, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const/4 v12, 0x7

    add-int/2addr v2, v12

    aget v1, v1, v2

    .line 288
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v13, v15}, Landroid/graphics/Point;-><init>(II)V

    .line 289
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v14, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 290
    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 291
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 292
    new-instance v15, Lcom/fingerprints/service/FingerprintManager$GuidedRect;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v4, v2

    move-object v2, v14

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/fingerprints/service/FingerprintManager$GuidedRect;-><init>(Lcom/fingerprints/service/FingerprintManager;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 293
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v15, v16

    move-object/from16 v14, v17

    move-object/from16 v12, v18

    goto/16 :goto_4

    :cond_4
    move-object/from16 v18, v12

    move-object/from16 v17, v14

    move-object/from16 v16, v15

    .line 295
    new-instance v10, Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;

    invoke-direct {v10, v8, v9, v11}, Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;-><init>(Lcom/fingerprints/service/FingerprintManager;Ljava/util/ArrayList;I)V

    .line 297
    new-instance v9, Lcom/fingerprints/service/FingerprintManager$GuidedData;

    move-object v0, v9

    move-object/from16 v1, p0

    move v2, v6

    move v3, v7

    move-object/from16 v4, v18

    move-object/from16 v5, v17

    move-object/from16 v6, v16

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/fingerprints/service/FingerprintManager$GuidedData;-><init>(Lcom/fingerprints/service/FingerprintManager;IILcom/fingerprints/service/FingerprintManager$GuidedResult;Lcom/fingerprints/service/FingerprintManager$GuidedRect;Lcom/fingerprints/service/FingerprintManager$GuidedRect;Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;)V

    .line 298
    iget-object v0, v8, Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    invoke-interface {v0, v9}, Lcom/fingerprints/service/FingerprintManager$EnrolCallback;->onProgress(Lcom/fingerprints/service/FingerprintManager$GuidedData;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EventHandler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/fingerprints/service/FingerprintManager;->mEventhHandler:Lcom/fingerprints/service/FingerprintManager$EventHandler;

    return-object p0
.end method

.method static synthetic access$1100()Landroid/os/Bundle;
    .locals 1

    .line 25
    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/fingerprints/service/FingerprintManager;->mIdentifyListener:Lcom/fingerprints/service/FingerprintManager$IdentifyListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/fingerprints/service/FingerprintManager;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/fingerprints/service/FingerprintManager;->mUserdata:I

    return p0
.end method

.method static synthetic access$400(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    return-object p0
.end method

.method static synthetic access$402(Lcom/fingerprints/service/FingerprintManager;Lcom/fingerprints/service/FingerprintManager$EnrolCallback;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    return-object p1
.end method

.method static synthetic access$500(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/fingerprints/service/FingerprintManager;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/fingerprints/service/FingerprintManager;->mReadyToStore:Z

    return p0
.end method

.method static synthetic access$602(Lcom/fingerprints/service/FingerprintManager;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/fingerprints/service/FingerprintManager;->mReadyToStore:Z

    return p1
.end method

.method static synthetic access$700(Lcom/fingerprints/service/FingerprintManager;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/fingerprints/service/FingerprintManager;->PackGuidedData()V

    return-void
.end method

.method static synthetic access$800()Landroid/os/Bundle;
    .locals 1

    .line 25
    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$DeleteTemplateCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/fingerprints/service/FingerprintManager;->mDeleteTemplateCallback:Lcom/fingerprints/service/FingerprintManager$DeleteTemplateCallback;

    return-object p0
.end method

.method public static notifyScreenOff()V
    .locals 3

    .line 820
    :try_start_0
    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " notifyScreenOff--------  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "fingerprints_service"

    .line 821
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 823
    invoke-static {v0}, Lcom/fingerprints/service/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/IFingerprintService;

    move-result-object v0

    .line 824
    invoke-interface {v0}, Lcom/fingerprints/service/IFingerprintService;->notifyScreenOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 827
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static notifyScreenOn()V
    .locals 3

    .line 808
    :try_start_0
    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " notifyScreenOn--------  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "fingerprints_service"

    .line 809
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 811
    invoke-static {v0}, Lcom/fingerprints/service/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/IFingerprintService;

    move-result-object v0

    .line 812
    invoke-interface {v0}, Lcom/fingerprints/service/IFingerprintService;->notifyScreenOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 815
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static open()Lcom/fingerprints/service/FingerprintManager;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.ServiceManager"

    .line 548
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 549
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 550
    new-instance v2, Lcom/fingerprints/service/FingerprintManager;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "fingerprints_service"

    aput-object v4, v3, v6

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/fingerprints/service/FingerprintManager;-><init>(Landroid/os/IBinder;Landroid/os/Looper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    .line 570
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 568
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 565
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    .line 562
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v1

    .line 559
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v1

    .line 556
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    return-object v0

    :catch_6
    move-exception v1

    .line 552
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 2

    .line 759
    :try_start_0
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v0, v1}, Lcom/fingerprints/service/IFingerprintService;->cancel(Lcom/fingerprints/service/IFingerprintClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 761
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public deleteFingerData(Lcom/fingerprints/service/FingerprintManager$DeleteTemplateCallback;[I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 773
    :cond_0
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager;->mDeleteTemplateCallback:Lcom/fingerprints/service/FingerprintManager$DeleteTemplateCallback;

    .line 775
    :try_start_0
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {p1, v0, p2}, Lcom/fingerprints/service/IFingerprintService;->removeData(Lcom/fingerprints/service/IFingerprintClient;[I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 777
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getIds()[I
    .locals 2

    .line 703
    :try_start_0
    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->TAG:Ljava/lang/String;

    const-string v1, "getIds      "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v0, v1}, Lcom/fingerprints/service/IFingerprintService;->getIds(Lcom/fingerprints/service/IFingerprintClient;)[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 706
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public isFingerEnable()Z
    .locals 1

    .line 791
    :try_start_0
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    invoke-interface {v0}, Lcom/fingerprints/service/IFingerprintService;->isFingerEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 793
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isSurpport()Z
    .locals 1

    .line 799
    :try_start_0
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    invoke-interface {v0}, Lcom/fingerprints/service/IFingerprintService;->isSurpport()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 801
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 3

    .line 652
    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->TAG:Ljava/lang/String;

    const-string v1, " release--------              "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager;->mzHanderThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 654
    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->TAG:Ljava/lang/String;

    const-string v2, " release--------  mzHanderThread"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager;->mzHanderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 656
    iput-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mzHanderThread:Landroid/os/HandlerThread;

    .line 660
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v0, v2}, Lcom/fingerprints/service/IFingerprintService;->release(Lcom/fingerprints/service/IFingerprintClient;)V

    .line 661
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    if-eqz v0, :cond_1

    .line 662
    iput-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/fingerprints/service/FingerprintManager;->mReadyToStore:Z

    if-nez v0, :cond_2

    .line 664
    iput-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    .line 665
    :cond_2
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    if-eqz v0, :cond_3

    .line 666
    iput-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    .line 668
    :cond_3
    iput-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mIdentifyListener:Lcom/fingerprints/service/FingerprintManager$IdentifyListener;

    .line 669
    iput-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 672
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setCaptureCallback(Lcom/fingerprints/service/FingerprintManager$CaptureCallback;)V
    .locals 0

    .line 644
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    return-void
.end method

.method public shouldRestartByScreenOn()V
    .locals 3

    .line 832
    :try_start_0
    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " shouldRestartByScreenOn--------  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v0, v1}, Lcom/fingerprints/service/IFingerprintService;->shouldRestartByScreenOn(Lcom/fingerprints/service/IFingerprintClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 835
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public startEnrol(Lcom/fingerprints/service/FingerprintManager$EnrolCallback;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 690
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    .line 692
    :try_start_0
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {p1, v0, p2}, Lcom/fingerprints/service/IFingerprintService;->startGuidedEnrol(Lcom/fingerprints/service/IFingerprintClient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 694
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void

    .line 688
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public startIdentify(Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;[I)V
    .locals 1

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 727
    :cond_0
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    .line 729
    :try_start_0
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {p1, v0, p2}, Lcom/fingerprints/service/IFingerprintService;->startIdentify(Lcom/fingerprints/service/IFingerprintClient;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 731
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public startIdentify(Lcom/fingerprints/service/FingerprintManager$IdentifyListener;[III)V
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 739
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager;->mIdentifyListener:Lcom/fingerprints/service/FingerprintManager$IdentifyListener;

    .line 740
    iput p4, p0, Lcom/fingerprints/service/FingerprintManager;->mUserdata:I

    .line 741
    sget-object p1, Lcom/fingerprints/service/FingerprintManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " startIdentify--------  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p3, :cond_0

    .line 743
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager;->mEventhHandler:Lcom/fingerprints/service/FingerprintManager$EventHandler;

    const/16 v0, 0x15

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1, p4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p4

    int-to-long v0, p3

    invoke-virtual {p1, p4, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 746
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object p3, p0, Lcom/fingerprints/service/FingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {p1, p3, p2}, Lcom/fingerprints/service/IFingerprintService;->startIdentify(Lcom/fingerprints/service/IFingerprintClient;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 748
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void

    .line 738
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public updateTA(Ljava/lang/String;)Z
    .locals 1

    .line 783
    :try_start_0
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    invoke-interface {v0, p1}, Lcom/fingerprints/service/IFingerprintService;->updateTA(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 785
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method
