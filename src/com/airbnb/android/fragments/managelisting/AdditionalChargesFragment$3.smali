.class Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$3;
.super Ljava/lang/Object;
.source "AdditionalChargesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->setupAdditionalGuests()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)V
    .registers 2

    .prologue
    .line 139
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mAdditionalGuestsCount:I
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    # setter for: Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mAdditionalGuestsCount:I
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->access$302(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;I)I

    .line 144
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mAdditionalGuestsCountTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->access$400(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mAdditionalGuestsCount:I
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method
