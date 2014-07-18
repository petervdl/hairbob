.class Lcom/airbnb/android/fragments/managelisting/BasePriceFragment$1;
.super Ljava/lang/Object;
.source "BasePriceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;

    # invokes: Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->showTooltip()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;)V

    .line 86
    return-void
.end method
