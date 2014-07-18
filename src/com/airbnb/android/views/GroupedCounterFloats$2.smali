.class Lcom/airbnb/android/views/GroupedCounterFloats$2;
.super Ljava/lang/Object;
.source "GroupedCounterFloats.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/GroupedCounterFloats;->init(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/GroupedCounterFloats;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/GroupedCounterFloats;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/airbnb/android/views/GroupedCounterFloats$2;->this$0:Lcom/airbnb/android/views/GroupedCounterFloats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCounterFloats$2;->this$0:Lcom/airbnb/android/views/GroupedCounterFloats;

    iget-object v1, p0, Lcom/airbnb/android/views/GroupedCounterFloats$2;->this$0:Lcom/airbnb/android/views/GroupedCounterFloats;

    iget v1, v1, Lcom/airbnb/android/views/GroupedCounterFloats;->mSelectedValue:I

    add-int/lit8 v1, v1, 0x1

    # invokes: Lcom/airbnb/android/views/GroupedCounterFloats;->superSetSelectedValue(I)V
    invoke-static {v0, v1}, Lcom/airbnb/android/views/GroupedCounterFloats;->access$000(Lcom/airbnb/android/views/GroupedCounterFloats;I)V

    .line 65
    return-void
.end method
