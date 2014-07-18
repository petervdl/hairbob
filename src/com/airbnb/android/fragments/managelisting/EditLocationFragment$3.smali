.class Lcom/airbnb/android/fragments/managelisting/EditLocationFragment$3;
.super Ljava/lang/Object;
.source "EditLocationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->LocationSelection:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onItemSelected(Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;)V

    .line 88
    return-void
.end method
