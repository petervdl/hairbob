.class public Lcom/google/android/gms/internal/ey;
.super Landroid/webkit/WebView;

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ey$a;
    }
.end annotation


# instance fields
.field private final lq:Ljava/lang/Object;

.field private nD:Lcom/google/android/gms/internal/am;

.field private final py:Lcom/google/android/gms/internal/l;

.field private sA:Z

.field private sC:Z

.field private final sy:Lcom/google/android/gms/internal/ey$a;


# virtual methods
.method public destroy()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ey;->sC:Z

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "size"    # J

    .prologue
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ey;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_16
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    goto :goto_16
.end method

.method protected onMeasure(II)V
    .registers 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const v0, 0x7fffffff

    const/high16 v8, 0x40000000

    const/16 v7, 0x8

    const/high16 v6, -0x80000000

    iget-object v4, p0, Lcom/google/android/gms/internal/ey;->lq:Ljava/lang/Object;

    monitor-enter v4

    :try_start_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ey;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ey;->sA:Z

    if-eqz v1, :cond_1b

    :cond_16
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    monitor-exit v4

    :goto_1a
    return-void

    :cond_1b
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-eq v2, v6, :cond_2f

    if-ne v2, v8, :cond_cc

    :cond_2f
    move v2, v3

    :goto_30
    if-eq v5, v6, :cond_34

    if-ne v5, v8, :cond_35

    :cond_34
    move v0, v1

    :cond_35
    iget-object v5, p0, Lcom/google/android/gms/internal/ey;->nD:Lcom/google/android/gms/internal/am;

    iget v5, v5, Lcom/google/android/gms/internal/am;->widthPixels:I

    if-gt v5, v2, :cond_41

    iget-object v2, p0, Lcom/google/android/gms/internal/ey;->nD:Lcom/google/android/gms/internal/am;

    iget v2, v2, Lcom/google/android/gms/internal/am;->heightPixels:I

    if-le v2, v0, :cond_b6

    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->sy:Lcom/google/android/gms/internal/ey$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ey$a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Not enough space to show ad. Needs "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/internal/ey;->nD:Lcom/google/android/gms/internal/am;

    iget v5, v5, Lcom/google/android/gms/internal/am;->widthPixels:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/internal/ey;->nD:Lcom/google/android/gms/internal/am;

    iget v5, v5, Lcom/google/android/gms/internal/am;->heightPixels:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " dp, but only has "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-float v1, v1

    div-float v0, v1, v0

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " dp."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ey;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_ab

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->setVisibility(I)V

    :cond_ab
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ey;->setMeasuredDimension(II)V

    :goto_b0
    monitor-exit v4

    goto/16 :goto_1a

    :catchall_b3
    move-exception v0

    monitor-exit v4
    :try_end_b5
    .catchall {:try_start_c .. :try_end_b5} :catchall_b3

    throw v0

    :cond_b6
    :try_start_b6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ey;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_c0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->setVisibility(I)V

    :cond_c0
    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->nD:Lcom/google/android/gms/internal/am;

    iget v0, v0, Lcom/google/android/gms/internal/am;->widthPixels:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->nD:Lcom/google/android/gms/internal/am;

    iget v1, v1, Lcom/google/android/gms/internal/am;->heightPixels:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ey;->setMeasuredDimension(II)V
    :try_end_cb
    .catchall {:try_start_b6 .. :try_end_cb} :catchall_b3

    goto :goto_b0

    :cond_cc
    move v2, v0

    goto/16 :goto_30
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->py:Lcom/google/android/gms/internal/l;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->py:Lcom/google/android/gms/internal/l;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/l;->a(Landroid/view/MotionEvent;)V

    :cond_9
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->sy:Lcom/google/android/gms/internal/ey$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ey$a;->setBaseContext(Landroid/content/Context;)V

    return-void
.end method
