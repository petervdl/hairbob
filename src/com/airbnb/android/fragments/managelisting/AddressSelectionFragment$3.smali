.class Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$3;
.super Ljava/lang/Object;
.source "AddressSelectionFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)V
    .registers 2

    .prologue
    .line 140
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mNoAddressLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1a

    .line 145
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mNoAddressLayout:Landroid/view/View;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mNoAddressLayoutHeight:I

    .line 147
    :cond_1a
    return-void
.end method
