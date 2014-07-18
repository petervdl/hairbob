.class Lcom/airbnb/android/fragments/SendSpecialOfferFragment$4;
.super Ljava/lang/Object;
.source "SendSpecialOfferFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->setupViews()V
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
    .line 247
    iput-object p1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$4;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$4;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    # invokes: Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->onSendOffer()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->access$700(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)V

    .line 251
    return-void
.end method
