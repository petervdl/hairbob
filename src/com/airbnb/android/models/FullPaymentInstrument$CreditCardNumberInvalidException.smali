.class public Lcom/airbnb/android/models/FullPaymentInstrument$CreditCardNumberInvalidException;
.super Ljava/lang/Exception;
.source "FullPaymentInstrument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/models/FullPaymentInstrument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreditCardNumberInvalidException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1c86f37c94f283baL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method
