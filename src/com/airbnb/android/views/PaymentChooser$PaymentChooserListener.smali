.class public interface abstract Lcom/airbnb/android/views/PaymentChooser$PaymentChooserListener;
.super Ljava/lang/Object;
.source "PaymentChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/views/PaymentChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PaymentChooserListener"
.end annotation


# virtual methods
.method public abstract onAddedPaymentMethod()V
.end method

.method public abstract onReceivedPayments()V
.end method

.method public abstract onReceivedPaymentsError()V
.end method

.method public abstract onSelectPayment()V
.end method
