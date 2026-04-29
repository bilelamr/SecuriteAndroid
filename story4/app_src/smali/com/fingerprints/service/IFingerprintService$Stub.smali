.class public abstract Lcom/fingerprints/service/IFingerprintService$Stub;
.super Landroid/os/Binder;
.source "IFingerprintService.java"

# interfaces
.implements Lcom/fingerprints/service/IFingerprintService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingerprints/service/IFingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingerprints/service/IFingerprintService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.fingerprints.service.IFingerprintService"

.field static final TRANSACTION_cancel:I = 0x6

.field static final TRANSACTION_getIds:I = 0x8

.field static final TRANSACTION_isFingerEnable:I = 0xa

.field static final TRANSACTION_isSurpport:I = 0xb

.field static final TRANSACTION_notifyScreenOff:I = 0xd

.field static final TRANSACTION_notifyScreenOn:I = 0xc

.field static final TRANSACTION_open:I = 0x1

.field static final TRANSACTION_release:I = 0x7

.field static final TRANSACTION_removeData:I = 0x5

.field static final TRANSACTION_shouldRestartByScreenOn:I = 0xe

.field static final TRANSACTION_startEnrol:I = 0x2

.field static final TRANSACTION_startGuidedEnrol:I = 0x3

.field static final TRANSACTION_startIdentify:I = 0x4

.field static final TRANSACTION_updateTA:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.fingerprints.service.IFingerprintService"

    .line 16
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/IFingerprintService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.fingerprints.service.IFingerprintService"

    .line 27
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    instance-of v1, v0, Lcom/fingerprints/service/IFingerprintService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/fingerprints/service/IFingerprintService;

    return-object v0

    .line 31
    :cond_1
    new-instance v0, Lcom/fingerprints/service/IFingerprintService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/fingerprints/service/IFingerprintService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.fingerprints.service.IFingerprintService"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 171
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/IFingerprintClient;

    move-result-object p1

    .line 174
    invoke-interface {p0, p1}, Lcom/fingerprints/service/IFingerprintService;->shouldRestartByScreenOn(Lcom/fingerprints/service/IFingerprintClient;)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 164
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-interface {p0}, Lcom/fingerprints/service/IFingerprintService;->notifyScreenOff()V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 157
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-interface {p0}, Lcom/fingerprints/service/IFingerprintService;->notifyScreenOn()V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 149
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-interface {p0}, Lcom/fingerprints/service/IFingerprintService;->isSurpport()Z

    move-result p1

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 141
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-interface {p0}, Lcom/fingerprints/service/IFingerprintService;->isFingerEnable()Z

    move-result p1

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 131
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-interface {p0, p1}, Lcom/fingerprints/service/IFingerprintService;->updateTA(Ljava/lang/String;)Z

    move-result p1

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 121
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/IFingerprintClient;

    move-result-object p1

    .line 124
    invoke-interface {p0, p1}, Lcom/fingerprints/service/IFingerprintService;->getIds(Lcom/fingerprints/service/IFingerprintClient;)[I

    move-result-object p1

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v1

    .line 112
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/IFingerprintClient;

    move-result-object p1

    .line 115
    invoke-interface {p0, p1}, Lcom/fingerprints/service/IFingerprintService;->release(Lcom/fingerprints/service/IFingerprintClient;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 103
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/IFingerprintClient;

    move-result-object p1

    .line 106
    invoke-interface {p0, p1}, Lcom/fingerprints/service/IFingerprintService;->cancel(Lcom/fingerprints/service/IFingerprintClient;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 91
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/IFingerprintClient;

    move-result-object p1

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p2

    .line 96
    invoke-interface {p0, p1, p2}, Lcom/fingerprints/service/IFingerprintService;->removeData(Lcom/fingerprints/service/IFingerprintClient;[I)Z

    move-result p1

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 80
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/IFingerprintClient;

    move-result-object p1

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p2

    .line 85
    invoke-interface {p0, p1, p2}, Lcom/fingerprints/service/IFingerprintService;->startIdentify(Lcom/fingerprints/service/IFingerprintClient;[I)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 69
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/IFingerprintClient;

    move-result-object p1

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 74
    invoke-interface {p0, p1, p2}, Lcom/fingerprints/service/IFingerprintService;->startGuidedEnrol(Lcom/fingerprints/service/IFingerprintClient;I)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 58
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/IFingerprintClient;

    move-result-object p1

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 63
    invoke-interface {p0, p1, p2}, Lcom/fingerprints/service/IFingerprintService;->startEnrol(Lcom/fingerprints/service/IFingerprintClient;I)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 48
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/IFingerprintClient;

    move-result-object p1

    .line 51
    invoke-interface {p0, p1}, Lcom/fingerprints/service/IFingerprintService;->open(Lcom/fingerprints/service/IFingerprintClient;)Z

    move-result p1

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 43
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
