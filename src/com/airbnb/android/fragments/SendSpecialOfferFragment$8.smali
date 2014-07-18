.class Lcom/airbnb/android/fragments/SendSpecialOfferFragment$8;
.super Ljava/lang/Object;
.source "SendSpecialOfferFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->showSendSpecialOfferConfirmationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)V
    .registers 2

    .prologue
    .line 390
    iput-object p1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$8;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 394
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 395
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$8;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    # invokes: Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->sendSpecialOffer()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->access$900(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)V

    .line 396
    return-void
.end method
