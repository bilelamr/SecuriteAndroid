.class public Lcom/oblador/keychain/cipherStorage/CipherStorage$EncryptionResult;
.super Lcom/oblador/keychain/cipherStorage/CipherStorage$CipherResult;
.source "CipherStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oblador/keychain/cipherStorage/CipherStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptionResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oblador/keychain/cipherStorage/CipherStorage$CipherResult<",
        "[B>;"
    }
.end annotation


# instance fields
.field public cipherStorage:Lcom/oblador/keychain/cipherStorage/CipherStorage;


# direct methods
.method public constructor <init>([B[BLcom/oblador/keychain/cipherStorage/CipherStorage;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/oblador/keychain/cipherStorage/CipherStorage$CipherResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    iput-object p3, p0, Lcom/oblador/keychain/cipherStorage/CipherStorage$EncryptionResult;->cipherStorage:Lcom/oblador/keychain/cipherStorage/CipherStorage;

    return-void
.end method
