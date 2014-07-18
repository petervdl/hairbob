.class Lcom/airbnb/android/fragments/SlidingMenuFragment$2;
.super Ljava/lang/Object;
.source "SlidingMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SlidingMenuFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SlidingMenuFragment;)V
    .registers 2

    .prologue
    .line 140
    iput-object p1, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$2;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$2;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    # getter for: Lcom/airbnb/android/fragments/SlidingMenuFragment;->mListener:Lcom/airbnb/android/fragments/SlidingMenuFragment$OnSlidingMenuItemSelectedListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->access$100(Lcom/airbnb/android/fragments/SlidingMenuFragment;)Lcom/airbnb/android/fragments/SlidingMenuFragment$OnSlidingMenuItemSelectedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/android/fragments/SlidingMenuFragment$OnSlidingMenuItemSelectedListener;->onSignInItemSelected()V

    .line 145
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$2;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    # invokes: Lcom/airbnb/android/fragments/SlidingMenuFragment;->notifyDataSetChanged()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->access$200(Lcom/airbnb/android/fragments/SlidingMenuFragment;)V

    .line 146
    return-void
.end method
