.class public Lcom/rt2zz/reactnativecontacts/ContactsProvider;
.super Ljava/lang/Object;
.source "ContactsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;
    }
.end annotation


# static fields
.field private static final FULL_PROJECTION:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JUST_ME_PROJECTION:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PHOTO_PROJECTION:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$1;

    invoke-direct {v0}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$1;-><init>()V

    sput-object v0, Lcom/rt2zz/reactnativecontacts/ContactsProvider;->JUST_ME_PROJECTION:Ljava/util/List;

    .line 75
    new-instance v0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$2;

    invoke-direct {v0}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$2;-><init>()V

    sput-object v0, Lcom/rt2zz/reactnativecontacts/ContactsProvider;->FULL_PROJECTION:Ljava/util/List;

    .line 79
    new-instance v0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$3;

    invoke-direct {v0}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$3;-><init>()V

    sput-object v0, Lcom/rt2zz/reactnativecontacts/ContactsProvider;->PHOTO_PROJECTION:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider;->contentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 31
    sget-object v0, Lcom/rt2zz/reactnativecontacts/ContactsProvider;->JUST_ME_PROJECTION:Ljava/util/List;

    return-object v0
.end method

.method private loadContactsFrom(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    .line 271
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_0
    :goto_0
    if-eqz v1, :cond_17

    .line 273
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "contact_id"

    .line 275
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v3, "_id"

    .line 276
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "raw_contact_id"

    .line 277
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    .line 282
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 285
    :cond_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eq v3, v5, :cond_2

    .line 289
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 292
    :cond_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    if-eq v4, v5, :cond_3

    .line 296
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 299
    :cond_3
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 302
    :goto_3
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 303
    new-instance v6, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;

    invoke-direct {v6, v0}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_4
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;

    const-string v6, "mimetype"

    .line 307
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "display_name"

    .line 308
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 309
    invoke-static {v0, v4}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->access$102(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 310
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v0}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->access$200(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 311
    invoke-static {v0, v7}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->access$202(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 314
    :cond_5
    invoke-static {v0}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->access$300(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v7, 0x1

    if-eqz v4, :cond_6

    const-string v4, "photo_uri"

    .line 315
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 316
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 317
    invoke-static {v0, v4}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->access$302(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    invoke-static {v0, v7}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->access$402(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;Z)Z

    .line 322
    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v8, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    sparse-switch v4, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v4, "vnd.android.cursor.item/organization"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v5, 0x3

    goto :goto_4

    :sswitch_1
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v5, 0x1

    goto :goto_4

    :sswitch_2
    const-string v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v5, 0x4

    goto :goto_4

    :sswitch_3
    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v5, 0x0

    goto :goto_4

    :sswitch_4
    const-string v4, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v5, 0x5

    goto :goto_4

    :sswitch_5
    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v5, 0x2

    :cond_7
    :goto_4
    const-string v4, "data4"

    const-string v6, "data5"

    const-string v13, "data3"

    const-string v14, "data2"

    if-eqz v5, :cond_16

    const-string v15, "mobile"

    const-string v16, "home"

    const-string v17, "other"

    const-string v9, "data1"

    if-eq v5, v7, :cond_12

    if-eq v5, v12, :cond_c

    if-eq v5, v11, :cond_b

    if-eq v5, v10, :cond_a

    if-eq v5, v8, :cond_8

    goto/16 :goto_0

    .line 389
    :cond_8
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v11, :cond_0

    .line 392
    :try_start_0
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "--"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    .line 393
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 394
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 396
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v12, :cond_9

    const/4 v4, 0x0

    .line 398
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 399
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lt v4, v7, :cond_0

    const/16 v5, 0xc

    if-gt v4, v5, :cond_0

    if-lt v3, v7, :cond_0

    const/16 v5, 0x1f

    if-gt v3, v5, :cond_0

    .line 401
    new-instance v5, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;

    invoke-direct {v5, v4, v3}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;-><init>(II)V

    invoke-static {v0, v5}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->access$1602(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;)Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;

    goto/16 :goto_0

    .line 403
    :cond_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v11, :cond_0

    const/4 v4, 0x0

    .line 405
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 406
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 407
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v4, :cond_0

    if-lt v5, v7, :cond_0

    const/16 v6, 0xc

    if-gt v5, v6, :cond_0

    if-lt v3, v7, :cond_0

    const/16 v6, 0x1f

    if-gt v3, v6, :cond_0

    .line 409
    new-instance v6, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;

    invoke-direct {v6, v4, v5, v3}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;-><init>(III)V

    invoke-static {v0, v6}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->access$1602(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;)Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    .line 414
    :goto_5
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ContactsProvider"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 386
    :cond_a
    invoke-static {v0}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->access$1500(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$PostalAddressItem;

    invoke-direct {v3, v1}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$PostalAddressItem;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 381
    :cond_b
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->access$1202(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 382
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->access$1302(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 383
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->access$1402(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 353
    :cond_c
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 354
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 355
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v5, :cond_f

    if-eq v5, v7, :cond_e

    if-eq v5, v12, :cond_d

    if-eq v5, v10, :cond_11

    move-object/from16 v15, v17

    goto :goto_6

    :cond_d
    const-string v15, "work"

    goto :goto_6

    :cond_e
    move-object/from16 v15, v16

    goto :goto_6

    .line 368
    :cond_f
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 369
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    goto :goto_6

    :cond_10
    const-string v15, ""

    .line 377
    :cond_11
    :goto_6
    invoke-static {v0}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->access$1100(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;)Ljava/util/List;

    move-result-object v0

    new-instance v5, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Item;

    invoke-direct {v5, v15, v4, v3}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 331
    :cond_12
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 332
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 334
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eq v5, v7, :cond_14

    if-eq v5, v12, :cond_15

    if-eq v5, v11, :cond_13

    move-object/from16 v15, v17

    goto :goto_7

    :cond_13
    const-string v15, "work"

    goto :goto_7

    :cond_14
    move-object/from16 v15, v16

    .line 349
    :cond_15
    :goto_7
    invoke-static {v0}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->access$1000(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;)Ljava/util/List;

    move-result-object v0

    new-instance v5, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Item;

    invoke-direct {v5, v15, v4, v3}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 324
    :cond_16
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->access$502(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->access$602(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 326
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->access$702(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->access$802(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "data6"

    .line 328
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->access$902(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_17
    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x5d8d3afc -> :sswitch_5
        -0x4f32162a -> :sswitch_4
        -0x4053a7f0 -> :sswitch_3
        -0x23d6087c -> :sswitch_2
        0x28c7a9f2 -> :sswitch_1
        0x291e75b8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getContactById(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 6

    .line 178
    iget-object v0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/rt2zz/reactnativecontacts/ContactsProvider;->FULL_PROJECTION:Ljava/util/List;

    .line 180
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v4, v3

    const-string v3, "contact_id = ?"

    const/4 v5, 0x0

    .line 178
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 187
    :try_start_0
    invoke-direct {p0, p1}, Lcom/rt2zz/reactnativecontacts/ContactsProvider;->loadContactsFrom(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 190
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 196
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;

    invoke-virtual {p1}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->toMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_2

    .line 190
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 192
    :cond_2
    throw v0
.end method

.method public getContactByRawId(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 7

    const-string v0, "contact_id"

    .line 149
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    .line 152
    iget-object v1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id= ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 154
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 158
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 168
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 171
    invoke-virtual {p0, v0}, Lcom/rt2zz/reactnativecontacts/ContactsProvider;->getContactById(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1
.end method

.method public getContacts()Lcom/facebook/react/bridge/WritableArray;
    .locals 13

    .line 205
    iget-object v0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "data"

    .line 206
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/rt2zz/reactnativecontacts/ContactsProvider;->JUST_ME_PROJECTION:Ljava/util/List;

    .line 207
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 205
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 214
    :try_start_0
    invoke-direct {p0, v0}, Lcom/rt2zz/reactnativecontacts/ContactsProvider;->loadContactsFrom(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 217
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Lcom/rt2zz/reactnativecontacts/ContactsProvider;->FULL_PROJECTION:Ljava/util/List;

    .line 226
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/email_v2"

    const-string v6, "vnd.android.cursor.item/phone_v2"

    const-string v7, "vnd.android.cursor.item/name"

    const-string v8, "vnd.android.cursor.item/organization"

    const-string v9, "vnd.android.cursor.item/postal-address_v2"

    const-string v10, "vnd.android.cursor.item/note"

    const-string v11, "vnd.android.cursor.item/website"

    const-string v12, "vnd.android.cursor.item/contact_event"

    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v5, "mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? OR mimetype=?"

    .line 224
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 249
    :try_start_1
    invoke-direct {p0, v0}, Lcom/rt2zz/reactnativecontacts/ContactsProvider;->loadContactsFrom(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 252
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 257
    :cond_1
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 258
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;

    .line 259
    invoke-virtual {v3}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->toMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    .line 261
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;

    .line 262
    invoke-virtual {v2}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->toMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_1

    :cond_3
    return-object v0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 252
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 254
    :cond_4
    throw v1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_5

    .line 217
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 219
    :cond_5
    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public getContactsByPhoneNumber(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableArray;
    .locals 7

    .line 121
    iget-object v0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/rt2zz/reactnativecontacts/ContactsProvider;->FULL_PROJECTION:Ljava/util/List;

    .line 123
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v4, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v4, v3

    const-string v3, "data1 LIKE ? OR data4 LIKE ?"

    const/4 v5, 0x0

    .line 121
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 131
    :try_start_0
    invoke-direct {p0, p1}, Lcom/rt2zz/reactnativecontacts/ContactsProvider;->loadContactsFrom(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 134
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 139
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    .line 140
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;

    .line 141
    invoke-virtual {v1}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->toMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    :cond_1
    return-object p1

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_2

    .line 134
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 136
    :cond_2
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getContactsMatchingString(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableArray;
    .locals 7

    .line 92
    iget-object v0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/rt2zz/reactnativecontacts/ContactsProvider;->FULL_PROJECTION:Ljava/util/List;

    .line 94
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v4, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v4, v3

    const-string v3, "display_name LIKE ? OR data1 LIKE ?"

    const/4 v5, 0x0

    .line 92
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 102
    :try_start_0
    invoke-direct {p0, p1}, Lcom/rt2zz/reactnativecontacts/ContactsProvider;->loadContactsFrom(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 105
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    .line 111
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;

    .line 112
    invoke-virtual {v1}, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->toMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    :cond_1
    return-object p1

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_2

    .line 105
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_2
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getPhotoUriFromContactId(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 426
    iget-object v0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/rt2zz/reactnativecontacts/ContactsProvider;->PHOTO_PROJECTION:Ljava/util/List;

    .line 428
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v4, v3

    const-string v3, "contact_id = ?"

    const/4 v5, 0x0

    .line 426
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 434
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "photo_uri"

    .line 435
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    if-eqz p1, :cond_0

    .line 442
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 444
    :cond_1
    throw v0

    :cond_2
    if-eqz p1, :cond_3

    .line 442
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
