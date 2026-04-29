.class Lcom/fingerprints/service/FingerprintManager$EventHandler;
.super Landroid/os/Handler;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingerprints/service/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fingerprints/service/FingerprintManager;


# direct methods
.method public constructor <init>(Lcom/fingerprints/service/FingerprintManager;Landroid/os/Looper;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    .line 372
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 377
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message     what  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1a

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 531
    :pswitch_1
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$900(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$DeleteTemplateCallback;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 532
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " MSG_DELETE_RESULT    msg.arg1:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$900(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$DeleteTemplateCallback;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-interface {v0, v3}, Lcom/fingerprints/service/FingerprintManager$DeleteTemplateCallback;->onDeleteResult(Z)V

    goto/16 :goto_0

    .line 515
    :pswitch_2
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {p1}, Lcom/fingerprints/service/FingerprintManager;->access$400(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 516
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {p1}, Lcom/fingerprints/service/FingerprintManager;->access$400(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/fingerprints/service/FingerprintManager$EnrolCallback;->onFingerDownTimeOut()V

    goto/16 :goto_0

    .line 521
    :pswitch_3
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 522
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyListener;

    move-result-object v0

    const/16 v1, 0x18

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$300(Lcom/fingerprints/service/FingerprintManager;)I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcom/fingerprints/service/FingerprintManager$IdentifyListener;->onResult(III)V

    goto/16 :goto_0

    .line 526
    :pswitch_4
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 527
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyListener;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v1}, Lcom/fingerprints/service/FingerprintManager;->access$300(Lcom/fingerprints/service/FingerprintManager;)I

    move-result v1

    invoke-interface {v0, v2, p1, v1}, Lcom/fingerprints/service/FingerprintManager$IdentifyListener;->onResult(III)V

    goto/16 :goto_0

    .line 414
    :pswitch_5
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/fingerprints/service/FingerprintManager$CaptureCallback;->onCaptureFailed(I)V

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 418
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyListener;

    move-result-object v0

    const/16 v1, 0x13

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$300(Lcom/fingerprints/service/FingerprintManager;)I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcom/fingerprints/service/FingerprintManager$IdentifyListener;->onResult(III)V

    goto/16 :goto_0

    .line 480
    :pswitch_6
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$400(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 481
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$800()Landroid/os/Bundle;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    const-string v1, "stitched"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 495
    :pswitch_7
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$400(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 496
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$800()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    const-string v2, "progress"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 497
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_a

    .line 498
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {p1, v4}, Lcom/fingerprints/service/FingerprintManager;->access$602(Lcom/fingerprints/service/FingerprintManager;Z)Z

    goto/16 :goto_0

    .line 490
    :pswitch_8
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$400(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 491
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$800()Landroid/os/Bundle;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    const-string v1, "next_direction"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 485
    :pswitch_9
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$400(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 486
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$800()Landroid/os/Bundle;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    const-string v1, "immobile"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 474
    :pswitch_a
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$400(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 475
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$800()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    const-string v2, "acceptance"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 476
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$800()Landroid/os/Bundle;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v1, "reject_reason"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 465
    :pswitch_b
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$400(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 466
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "maskList"

    .line 467
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 468
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$800()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 469
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$800()Landroid/os/Bundle;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    const-string v1, "maskNumber"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 457
    :pswitch_c
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$400(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 458
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "nextTouch"

    .line 459
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    .line 460
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$800()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 449
    :pswitch_d
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$400(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 450
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "lastTouch"

    .line 451
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    .line 452
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$800()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 444
    :pswitch_e
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {p1}, Lcom/fingerprints/service/FingerprintManager;->access$400(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 445
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {p1}, Lcom/fingerprints/service/FingerprintManager;->access$700(Lcom/fingerprints/service/FingerprintManager;)V

    goto/16 :goto_0

    .line 510
    :pswitch_f
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {p1}, Lcom/fingerprints/service/FingerprintManager;->access$400(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 511
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {p1}, Lcom/fingerprints/service/FingerprintManager;->access$400(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/fingerprints/service/FingerprintManager$EnrolCallback;->onEnrollmentFailed()V

    goto/16 :goto_0

    .line 502
    :pswitch_10
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$500(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 503
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$500(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;->onNoMatch()V

    .line 505
    :cond_2
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 506
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyListener;

    move-result-object v0

    const/4 v1, 0x7

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$300(Lcom/fingerprints/service/FingerprintManager;)I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcom/fingerprints/service/FingerprintManager$IdentifyListener;->onResult(III)V

    goto/16 :goto_0

    .line 422
    :pswitch_11
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$500(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 423
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$500(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v4, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-interface {v0, v1, v3}, Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;->onIdentified(IZ)V

    .line 426
    :cond_4
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 427
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyListener;

    move-result-object v0

    const/4 v1, 0x6

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$300(Lcom/fingerprints/service/FingerprintManager;)I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcom/fingerprints/service/FingerprintManager$IdentifyListener;->onResult(III)V

    goto/16 :goto_0

    .line 431
    :pswitch_12
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$400(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 432
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$400(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/fingerprints/service/FingerprintManager$EnrolCallback;->onEnrolled(I)V

    .line 433
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {p1}, Lcom/fingerprints/service/FingerprintManager;->access$600(Lcom/fingerprints/service/FingerprintManager;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 434
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {p1, v3}, Lcom/fingerprints/service/FingerprintManager;->access$602(Lcom/fingerprints/service/FingerprintManager;Z)Z

    .line 435
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/fingerprints/service/FingerprintManager;->access$402(Lcom/fingerprints/service/FingerprintManager;Lcom/fingerprints/service/FingerprintManager$EnrolCallback;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    goto/16 :goto_0

    .line 440
    :pswitch_13
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {p1}, Lcom/fingerprints/service/FingerprintManager;->access$400(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object p1

    goto/16 :goto_0

    .line 402
    :pswitch_14
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {p1}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 403
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {p1}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/fingerprints/service/FingerprintManager$CaptureCallback;->onCaptureCompleted()V

    .line 405
    :cond_5
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {p1}, Lcom/fingerprints/service/FingerprintManager;->access$400(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 406
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 410
    :cond_6
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {p1}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyListener;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 411
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {p1}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyListener;

    move-result-object p1

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v1}, Lcom/fingerprints/service/FingerprintManager;->access$300(Lcom/fingerprints/service/FingerprintManager;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/fingerprints/service/FingerprintManager$IdentifyListener;->onStatus(II)V

    goto :goto_0

    .line 388
    :pswitch_15
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {p1}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 389
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {p1}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/fingerprints/service/FingerprintManager$CaptureCallback;->onInput()V

    .line 391
    :cond_7
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {p1}, Lcom/fingerprints/service/FingerprintManager;->access$400(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 392
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 396
    :cond_8
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {p1}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyListener;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 397
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {p1}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyListener;

    move-result-object p1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v1}, Lcom/fingerprints/service/FingerprintManager;->access$300(Lcom/fingerprints/service/FingerprintManager;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/fingerprints/service/FingerprintManager$IdentifyListener;->onStatus(II)V

    .line 398
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 380
    :pswitch_16
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {p1}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 381
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {p1}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/fingerprints/service/FingerprintManager$CaptureCallback;->onWaitingForInput()V

    .line 383
    :cond_9
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {p1}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyListener;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 384
    iget-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {p1}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyListener;

    move-result-object p1

    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$300(Lcom/fingerprints/service/FingerprintManager;)I

    move-result v0

    invoke-interface {p1, v4, v0}, Lcom/fingerprints/service/FingerprintManager$IdentifyListener;->onStatus(II)V

    :cond_a
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
