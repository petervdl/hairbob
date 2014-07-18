.class Lcom/airbnb/android/fragments/SendSpecialOfferFragment$6;
.super Ljava/lang/Object;
.source "SendSpecialOfferFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->showListingsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

.field final synthetic val$adapter:Lcom/airbnb/android/adapters/ListingPickerAdapter;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;Lcom/airbnb/android/adapters/ListingPickerAdapter;)V
    .registers 3

    .prologue
    .line 288
    iput-object p1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$6;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$6;->val$adapter:Lcom/airbnb/android/adapters/ListingPickerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 291
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$6;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$6;->val$adapter:Lcom/airbnb/android/adapters/ListingPickerAdapter;

    invoke-virtual {v1, p2}, Lcom/airbnb/android/adapters/ListingPickerAdapter;->getItem(I)Lcom/airbnb/android/models/Listing;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->onListingChanged(Lcom/airbnb/android/models/Listing;)V

    .line 292
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 293
    return-void
.end method
