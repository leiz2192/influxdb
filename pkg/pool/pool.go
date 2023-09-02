package pool

import (
	"errors"

	"github.com/panjf2000/ants/v2"
)

var ErrPoolNotInit = errors.New("DefaultPool not init yet")

var defaultPool *ants.Pool

func init() {
	var err error
	defaultPool, err = ants.NewPool(100)
	if err != nil {
		panic(err)
	}
}

func Submit(task func()) error {
	return defaultPool.Submit(task)
}
