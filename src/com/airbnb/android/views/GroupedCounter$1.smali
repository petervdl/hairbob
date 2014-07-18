.class Lcom/airbnb/android/views/GroupedCounter$1;
.super Ljava/lang/Object;
.source "GroupedCounter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/GroupedCounter;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/GroupedCounter;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/GroupedCounter;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/airbnb/android/views/GroupedCounter$1;->this$0:Lcom/airbnb/android/views/GroupedCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCounter$1;->this$0:Lcom/airbnb/android/views/GroupedCounter;

    iget-object v1, p0, Lcom/airbnb/android/views/GroupedCounter$1;->this$0:Lcom/airbnb/android/views/GroupedCounter;

    iget v1, v1, Lcom/airbnb/android/views/GroupedCounter;->mSelectedValue:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCounter;->setSelectedValue(I)V

    .line 85
    return-void
.end method
