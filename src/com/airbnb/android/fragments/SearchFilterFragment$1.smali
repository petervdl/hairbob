.class Lcom/airbnb/android/fragments/SearchFilterFragment$1;
.super Ljava/lang/Object;
.source "SearchFilterFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/RangeSeekBar$OnRangeSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SearchFilterFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/views/RangeSeekBar$OnRangeSeekBarChangeListener",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SearchFilterFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SearchFilterFragment;)V
    .registers 2

    .prologue
    .line 101
    iput-object p1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment$1;->this$0:Lcom/airbnb/android/fragments/SearchFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRangeSeekBarValuesChanged(Lcom/airbnb/android/views/RangeSeekBar;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 7
    .param p2, "minValue"    # Ljava/lang/Integer;
    .param p3, "maxValue"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/views/RangeSeekBar",
            "<*>;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "bar":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<*>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment$1;->this$0:Lcom/airbnb/android/fragments/SearchFilterFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment$1;->this$0:Lcom/airbnb/android/fragments/SearchFilterFragment;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # invokes: Lcom/airbnb/android/fragments/SearchFilterFragment;->mapSeekBarValueToPrice(I)I
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/SearchFilterFragment;->access$100(Lcom/airbnb/android/fragments/SearchFilterFragment;I)I

    move-result v1

    # setter for: Lcom/airbnb/android/fragments/SearchFilterFragment;->mMinPrice:I
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/SearchFilterFragment;->access$002(Lcom/airbnb/android/fragments/SearchFilterFragment;I)I

    .line 106
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment$1;->this$0:Lcom/airbnb/android/fragments/SearchFilterFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment$1;->this$0:Lcom/airbnb/android/fragments/SearchFilterFragment;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # invokes: Lcom/airbnb/android/fragments/SearchFilterFragment;->mapSeekBarValueToPrice(I)I
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/SearchFilterFragment;->access$100(Lcom/airbnb/android/fragments/SearchFilterFragment;I)I

    move-result v1

    # setter for: Lcom/airbnb/android/fragments/SearchFilterFragment;->mMaxPrice:I
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/SearchFilterFragment;->access$202(Lcom/airbnb/android/fragments/SearchFilterFragment;I)I

    .line 107
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment$1;->this$0:Lcom/airbnb/android/fragments/SearchFilterFragment;

    # invokes: Lcom/airbnb/android/fragments/SearchFilterFragment;->updateSeekBarText()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/SearchFilterFragment;->access$300(Lcom/airbnb/android/fragments/SearchFilterFragment;)V

    .line 108
    return-void
.end method

.method public bridge synthetic onRangeSeekBarValuesChanged(Lcom/airbnb/android/views/RangeSeekBar;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p1, "x0"    # Lcom/airbnb/android/views/RangeSeekBar;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 101
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/SearchFilterFragment$1;->onRangeSeekBarValuesChanged(Lcom/airbnb/android/views/RangeSeekBar;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
